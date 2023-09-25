#include <iostream>
#include <ostream>
#include <string_view>
#include <variant>
#include <algorithm>
#include "common/casting.h"
#include "common/common.h"
#include "ir/constant.h"
#include "ir/program.h"
#include "ir/func.h"
#include "ir/basicblock.h"
#include "ir/instruction.h"
#include "ir/instructions.h"
#include "ir/global.h"
#include "ir/attributes.h"
#include "ir/attr_grp.h"
#include "ir/ty.h"

#define print_if_true(v, item) do { if ((v).item) { os << " " #item; } } while (0)
#define Self std::remove_reference<decltype(*this)>::type

std::string to_string(const Name_t &name) {
    if (auto sv = std::get_if<std::string_view>(&name)) {
        return std::string(*sv);
    } else {
        auto id = std::get_if<size_t>(&name);
        return std::to_string(*id);
    }
}

std::ostream &operator<<(std::ostream &os, const Name_t &name) {
    os << to_string(name);
    return os;
}

std::ostream &operator<<(std::ostream &os, const Program &program) {
    program.update_name();

    if (!program.source_file_name.empty()) {
        os << "source_filename = " << program.source_file_name << "\n";
    }
    // print target defs
    if (program.target_def.datalayout) {
        os << "target datalayout = " << *program.target_def.datalayout << "\n";
    }
    if (program.target_def.triple) {
        os << "target triple = " << *program.target_def.triple << "\n";
    }

    os << "\n";

    for (const auto &global: program.globals) {
        os << *global << "\n";;
    }

    for (auto fn = program.funcs.head; fn; fn = fn->next) {
        os << "\n";
        os << *fn << "\n";
    }

    if (!program.attr_grp_entries.empty()) {
        os << "\n";
        for (const auto &attr_grp: program.attr_grp_entries) {
            os << attr_grp << "\n";
        }
    }

    if (!program.metadata_entries.empty()) {
        os << "\n";
        for (const auto &metadata: program.metadata_entries) {
            os << metadata << "\n";
        }
    }

    return os;
}

void Program::update_name() const {
    for (auto func = this->funcs.head; func; func = func->next) {
        func->update_name();
    }
}

std::ostream &operator<<(std::ostream &os, const Func &func) {
    if (func.is_decl) {
        os << "declare";
    } else {
        os << "define";
    }
    os << func.ret_attr;

    // print ret_ty and name
    os << " " << *func.ret_type << " " << "@" << func.name;

    // print args
    os << "(";
    bool first_param = true;
    for (const auto &param: func.params) {
        if (!first_param) {
            os << ", ";
        }
        first_param = false;
        os << *param;
    }
    os << ")";

    os << func.fn_attr;
    os << func.attr_grp_vars;

    if (!func.is_decl) {
        // print funcs body
        os << " {" << "\n";
        for (auto bb = func.bbs.head; bb; bb = bb->next) {
            os << *bb;
        }
        os << "}";
    }

    return os;
}

void Func::update_name() {
    size_t cnt = 0;
    std::ranges::for_each(this->params,
                          [&](const auto &param) { param->name = cnt++; });

    for (auto bb = bbs.head; bb; bb = bb->next) {
        bb->name = cnt++;

        for (auto inst = bb->insts.head; inst; inst = inst->next) {
            if (inst->is_assignment()) {
                inst->name = cnt++;
            }
        }
    }
}

std::ostream &operator<<(std::ostream &os, const Ty &ty) {
    switch (ty.ty_tag) {
        case Ty::VOID:
            os << "void";
            break;
        case Ty::INT8:
            os << "i8";
            break;
        case Ty::INT16:
            os << "i16";
            break;
        case Ty::INT32:
            os << "i32";
            break;
        case Ty::INT64:
            os << "i64";
            break;
        case Ty::BOOL:
            os << "i1";
            break;
        case Ty::FLOAT:
            os << "float";
            break;
        case Ty::DOUBLE:
            os << "double";
            break;
        case Ty::OpaquePtr:
            os << "ptr";
            break;
        case Ty::PTR: {
            auto ptr_ty = cast<PtrTy>(&ty);
            os << *ptr_ty->ty << "*";
        }
            break;
        case Ty::ARRAY: {
            auto array_ty = cast<ArrayTy>(&ty);
            os << "[" << array_ty->size << " x " << *array_ty->ty << "]";
        }
            break;
        default:
            unreachable();
    }

    return os;
}

std::ostream &operator<<(std::ostream &os, const Param &param) {
    os << *param.ty << param.attributes;
    os << " %" << param.name;
    return os;
}

std::ostream &operator<<(std::ostream &os, const BasicBlock &bb) {
    os << bb.name << ":" << "\n";

    for (auto inst = bb.insts.head; inst; inst = inst->next) {
        os << "    " << *inst << "\n";
    }

    return os;
}

std::ostream &operator<<(std::ostream &os, const Alignment &alignment) {
    os << "align " << alignment.align;
    return os;
}

std::ostream &operator<<(std::ostream &os, const Inst &inst) {
    inst.print_inst(os);

    if (!inst.metadatas.empty()) {
        os << ", ";
        for (auto const &metadata: inst.metadatas) {
            os << metadata;
        }
    }

    return os;
}

void BinaryInst::print_inst(std::ostream &os) const {
    auto &binary_inst = cast<const Self>(*this);

    binary_inst.print_tag(os);
    os << " = ";

    switch (this->opcode) {
        // Binary
        case Inst::ADD:
            os << "add";
            break;
        case Inst::SUB:
            os << "sub";
            break;
        case Inst::MUL:
            os << "mul";
            break;
        case Inst::UDIV:
            os << "udiv";
            break;
        case Inst::SDIV:
            os << "sdiv";
            break;
        case Inst::UREM:
            os << "urem";
            break;
        case Inst::SREM:
            os << "srem";
            break;
        case Inst::SHL:
            os << "shl";
            break;
        case Inst::LSHR:
            os << "lshr";
            break;
        case Inst::ASHR:
            os << "ashr";
            break;
        case Inst::AND:
            os << "and";
            break;
        case Inst::OR:
            os << "or";
            break;
        case Inst::XOR:
            os << "xor";
            break;
        case Inst::FADD:
            os << "fadd";
            break;
        case Inst::FSUB:
            os << "fsub";
            break;
        case Inst::FMUL:
            os << "fmul";
            break;
        case Inst::FDIV:
            os << "fdiv";
            break;
        case Inst::FREM:
            os << "frem";
            break;
        default:
            unreachable();
    }

    print_if_true(binary_inst, nuw);
    print_if_true(binary_inst, nsw);
    print_if_true(binary_inst, exact);
    auto op0 = binary_inst.get_operand(0);
    auto op1 = binary_inst.get_operand(1);
    os << " " << *op0->ty << " ";
    op0->print_tag(os);
    os << ", ";
    op1->print_tag(os);
}

void BranchInst::print_inst(std::ostream &os) const {
    auto &branch_inst = cast<const Self>(*this);

    auto cond = branch_inst.get_operand(0);
    auto true_bb = branch_inst.get_operand(1);
    auto false_bb = branch_inst.get_operand(2);
    os << "br " << *cond->ty << " ";
    cond->print_tag(os);
    os << ", label ";
    true_bb->print_tag(os);
    os << ", label ";
    false_bb->print_tag(os);
}

void SwitchInst::print_inst(std::ostream &os) const {
    auto &switch_inst = cast<const Self>(*this);

    auto cond = switch_inst.get_operand(0);
    auto default_bb = switch_inst.get_operand(1);
    os << "switch " << *cond->ty << " ";
    cond->print_tag(os);
    os << ", ";
    default_bb->print_tag(os);
    os << " [";

    for (size_t i = 2; i < switch_inst.op_count; i += 2) {
        auto val = switch_inst.get_operand(i);
        auto bb = switch_inst.get_operand(i + 1);
        os << *val->ty << " ";
        val->print_tag(os);
        os << ", "
           << "label ";
        bb->print_tag(os);
        os << " ";
    }

    os << "]";
}

void SelectInst::print_inst(std::ostream &os) const {
    auto &select_inst = cast<const Self>(*this);

    auto cond = select_inst.get_operand(0);
    auto true_val = select_inst.get_operand(1);
    auto false_val = select_inst.get_operand(2);
    select_inst.print_tag(os);
    os << " = select "
       << *cond->ty << " ";
    cond->print_tag(os);
    os << ", " << *true_val->ty << " ";
    true_val->print_tag(os);
    os << ", " << *false_val->ty << " ";
    false_val->print_tag(os);
}

void JumpInst::print_inst(std::ostream &os) const {
    auto &jump_inst = cast<const Self>(*this);

    auto nxt_bb = jump_inst.get_operand(0);
    os << "br label ";
    nxt_bb->print_tag(os);
}

void RetInst::print_inst(std::ostream &os) const {
    auto &ret_inst = cast<const Self>(*this);

    if (ret_inst.op_count == 0) {
        os << "ret void";
    } else {
        auto ret_val = ret_inst.get_operand(0);
        os << "ret " << *ret_val->ty << " ";
        ret_val->print_tag(os);
    }
}

void GepInst::print_inst(std::ostream &os) const {
    auto &gep_inst = cast<const Self>(*this);

    gep_inst.print_tag(os);
    os << " = getelementptr";
    print_if_true(gep_inst, inbounds);

    auto base = gep_inst.get_operand(0);
    assert(base->ty->ty_tag == Ty::PTR);
    auto result_ty = cast<PtrTy>(base->ty)->ty;

    os << " " << *result_ty << ", "
       << *base->ty << " ";
    base->print_tag(os);

    for (size_t i = 1; i < op_count; ++i) {
        auto idx = gep_inst.get_operand(i);
        os << ", " << *idx->ty << " ";
        idx->print_tag(os);
    }
}

void LoadInst::print_inst(std::ostream &os) const {
    auto &load_inst = cast<const Self>(*this);

    auto addr = load_inst.get_operand(0);
    load_inst.print_tag(os);
    os << " = "
       << "load " << *load_inst.ty << ", "
       << *addr->ty << " ";
    addr->print_tag(os);

    if (load_inst.alignment.has_value()) {
        os << ", " << load_inst.alignment.value();
    }
}

void StoreInst::print_inst(std::ostream &os) const {
    auto &store_inst = cast<const Self>(*this);

    auto data = store_inst.get_operand(0);
    auto addr = store_inst.get_operand(1);
    os << "store "
       << *data->ty << " ";
    data->print_tag(os);
    os << ", "
       << *addr->ty << " ";
    addr->print_tag(os);

    if (store_inst.alignment.has_value()) {
        os << ", " << store_inst.alignment.value();
    }
}

void AllocaInst::print_inst(std::ostream &os) const {
    auto &alloca_inst = cast<const Self>(*this);

    alloca_inst.print_tag(os);
    os << " = alloca";
    os << alloca_inst.attr;

    os << " " << *alloca_inst.alloca_ty;

    if (alloca_inst.alignment.has_value()) {
        os << ", " << alloca_inst.alignment.value();
    }
}

void CallInst::print_inst(std::ostream &os) const {
    auto &call_inst = cast<const Self>(*this);

    if (call_inst.ty->ty_tag != Ty::VOID) {
        call_inst.print_tag(os);
        os << " = ";
    }

    switch (call_inst.tailness) {
        case Tail:
            os << "tail ";
            break;
        case MustTail:
            os << "musttail ";
            break;
        case NoTail:
            os << "notail ";
            break;
        case None:
            break;
    }

    os << "call" << call_inst.ret_attr
       << " " << *call_inst.ty << " @";
    call_inst.get_operand(0)->print_tag(os);
    os << "(";

    // print args
    for (size_t i = 1; i < call_inst.op_count; ++i) {
        if (i != 1) {
            os << ", ";
        }

        auto arg = call_inst.get_operand(i);
        os << *arg->ty;

        const auto &arg_info = call_inst.arg_infos[i - 1];
        os << arg_info.attributes;

        if (arg_info.alignment.has_value()) {
            os << " " << arg_info.alignment.value();
        }

        os << " ";
        arg->print_tag(os);
    }

    os << ")";
    os << call_inst.attr_grp_vars;
}

void PhiInst::print_inst(std::ostream &os) const {
    auto &phi_inst = cast<const Self>(*this);

    phi_inst.print_tag(os);
    os << " = phi " << *phi_inst.ty << " ";

    for (size_t i = 0; i < phi_inst.op_count; i += 2) {
        if (i != 0) {
            os << ", ";
        }
        os << "[ ";
        phi_inst.get_operand(i)->print_tag(os);
        os << ", ";
        phi_inst.get_operand(i + 1)->print_tag(os);
        os << " ]";
    }
}

void CastInst::print_inst(std::ostream &os) const {
    auto &cast_inst = cast<const Self>(*this);

    cast_inst.print_tag(os);
    os << " = ";

    switch (cast_inst.cast_op) {
        case CastOp::ZEXT:
            os << "zext";
            break;
        case CastOp::SEXT:
            os << "sext";
            break;
        case CastOp::BITCAST:
            os << "bitcast";
            break;
        case CastOp::TRUNC:
            os << "trunc";
            break;
        case CastOp::INTTOPTR:
            os << "inttoptr";
            break;
        case CastOp::PTRTOINT:
            os << "ptrtoint";
            break;
        case CastOp::UNDEF:
            unreachable();
    }

    auto orig_val = cast_inst.get_operand(0);
    os << " " << *orig_val->ty << " ";
    orig_val->print_tag(os);
    os << " to " << *cast_inst.target_ty;
}

void IcmpInst::print_inst(std::ostream &os) const {
    auto &icmp_inst = cast<const Self>(*this);

    icmp_inst.print_tag(os);
    os << " = icmp ";

    switch (icmp_inst.pred) {
        case Pred::EQ:
            os << "eq";
            break;
        case Pred::NE:
            os << "ne";
            break;
        case Pred::SLT:
            os << "slt";
            break;
        case Pred::SGT:
            os << "sgt";
            break;
        case Pred::SLE:
            os << "sle";
            break;
        case Pred::SGE:
            os << "sge";
            break;
        case Pred::ULT:
            os << "ult";
            break;
        case Pred::UGT:
            os << "ugt";
            break;
        case Pred::ULE:
            os << "ule";
            break;
        case Pred::UGE:
            os << "uge";
            break;
    }

    auto op0 = icmp_inst.get_operand(0);
    auto op1 = icmp_inst.get_operand(1);
    os << " " << *op0->ty << " ";
op0->print_tag(os);
os << ", ";
op1->print_tag(os);
}

std::ostream &operator<<(std::ostream &os, const MetadataVar &metadata) {
    os << "!" << metadata.name << " ";
    return os;
}

void FcmpInst::print_inst(std::ostream &os) const {
    auto &fcmp_inst = cast<const Self>(*this);

    fcmp_inst.print_tag(os);
    os << " = fcmp ";

    switch (fcmp_inst.pred) {
        case Pred::FALSE:
            os << "false";
            break;
        case Pred::OEQ:
            os << "oeq";
            break;
        case Pred::OGT:
            os << "ogt";
            break;
        case Pred::OGE:
            os << "oge";
            break;
        case Pred::OLT:
            os << "olt";
            break;
        case Pred::OLE:
            os << "ole";
            break;
        case Pred::ONE:
            os << "one";
            break;
        case Pred::ORD:
            os << "ord";
            break;
        case Pred::UEQ:
            os << "ueq";
            break;
        case Pred::UGT:
            os << "ugt";
            break;
        case Pred::UGE:
            os << "uge";
            break;
        case Pred::ULT:
            os << "ult";
            break;
        case Pred::ULE:
            os << "ule";
            break;
        case Pred::UNE:
            os << "une";
            break;
        case Pred::UNO:
            os << "uno";
            break;
        case Pred::TRUE:
            os << "true";
            break;
    }

    auto op0 = fcmp_inst.get_operand(0);
    auto op1 = fcmp_inst.get_operand(1);
    os << " " << *op0->ty << " ";
op0->print_tag(os);
os << ", ";
op1->print_tag(os);
}

std::ostream &operator<<(std::ostream &os, const AttrGrpEntry &attr_grp) {
    os << "attributes #" << attr_grp.name << " = {" << attr_grp.val << "}";
    return os;
}

std::ostream &operator<<(std::ostream &os, const MetadataEntry &metadata_entry) {
    os << "!" << metadata_entry.name << " =";
    print_if_true(metadata_entry, distinct);
    os << " !{" << metadata_entry.val << "}";
    return os;
}

std::ostream &operator<<(std::ostream &os, const Global &global) {
    global.print_tag(os);
    os << " =" << global.attributes;
    switch (global.global_type) {
        case Global::GlobalType::Global:
            os << " global";
            break;
        case Global::GlobalType::Constant:
            os << " constant";
            break;
    }
    os << " " << *global.value_ty;

    if (global.init_val) {
        os << " ";
        global.init_val->print_tag(os);
    }

    if (global.alignment.has_value()) {
        os << ", " << global.alignment.value();
    }

    return os;
}



std::ostream &operator<<(std::ostream &os, const Attribute &attr) {
    os << Attribute::ATTR_NAMES.at(attr.attr);

    if (attr.arg.has_value()) {
        if (auto i = std::get_if<int>(&attr.arg.value())) {
            os << "(" << *i << ")";
        } else if (auto ty = std::get_if<Ty*>(&attr.arg.value())) {
            os << " (" << *ty << ")";
        } else {
            unreachable();
        }
    }

    return os;
}

std::ostream &operator<<(std::ostream &os, const Attributes &attrs) {
    std::ranges::for_each(attrs.attrs,
                          [&os](const auto &attr) { os << " " << attr; });

    return os;
}

std::ostream &operator<<(std::ostream &os, const AttrGrpVars &attr_grp_var) {
    std::ranges::for_each(attr_grp_var.names,
                          [&os](const auto &name) { os << " #" << name; });
    return os;
}

void FreezeInst::print_inst(std::ostream &os) const {
    auto &freeze_inst = cast<const Self>(*this);

    freeze_inst.print_tag(os);
    os << " = freeze " << *freeze_inst.ty << " ";
    freeze_inst.get_operand(0)->print_tag(os);
}

void CastExprConst::print_tag(std::ostream& os) const {
        switch (cast_op) {
            case CastOp::ZEXT:
                os << "zext";
                break;
            case CastOp::SEXT:
                os << "sext";
                break;
            case CastOp::BITCAST:
                os << "bitcast";
                break;
            case CastOp::TRUNC:
                os << "trunc";
                break;
            case CastOp::INTTOPTR:
                os << "inttoptr";
                break;
            case CastOp::PTRTOINT:
                os << "ptrtoint";
                break;
            case CastOp::UNDEF:
                unreachable();
        }

        os << " (" << *orig_val->ty << " ";
        orig_val->print_tag(os);
        os << " to " << *target_ty << ")";
    }
