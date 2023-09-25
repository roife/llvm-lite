; ModuleID = 'conv2_dynamic_65.cpp'
source_filename = "conv2_dynamic_65.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6k-unknown-linux-gnueabihf"

@block_idx = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: norecurse nounwind readnone
define dso_local i64 @_Z3minxx(i64 %0, i64 %1) local_unnamed_addr #0 {
  %3 = icmp slt i64 %0, %1
  %4 = select i1 %3, i64 %0, i64 %1
  ret i64 %4
}

; Function Attrs: norecurse nounwind readnone
define dso_local i64 @_Z3maxxx(i64 %0, i64 %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %0, %1
  %4 = select i1 %3, i64 %0, i64 %1
  ret i64 %4
}

define dso_local void @conv2_dynamic_65(i16* noalias %0, i16* noalias %1, i16* noalias %2, i8* noalias %3) local_unnamed_addr #1 {
  tail call void @_Z11intrinsic_4y(i64 0)
  tail call void @_Z11intrinsic_5y(i64 0)
  tail call void @_Z11intrinsic_6v()
  %5 = tail call i64 @_Z11intrinsic_2y(i64 0)
  %6 = trunc i64 %5 to i32
  %7 = inttoptr i32 %6 to i8*
  tail call void @_Z12intrinsic_15PvS_htttt(i8* %7, i8* %3, i8 zeroext 0, i16 zeroext 1, i16 zeroext 5, i16 zeroext 0, i16 zeroext 0)
  tail call void @_Z11intrinsic_76pipe_t(i32 6)
  %8 = inttoptr i32 %6 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !3
  %10 = getelementptr inbounds i8, i8* %7, i32 4
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !3
  %13 = getelementptr inbounds i8, i8* %7, i32 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !3
  %16 = getelementptr inbounds i8, i8* %7, i32 12
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4, !tbaa !3
  %19 = getelementptr inbounds i8, i8* %7, i32 16
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !3
  %22 = getelementptr inbounds i8, i8* %7, i32 20
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4, !tbaa !3
  %25 = getelementptr inbounds i8, i8* %7, i32 24
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !3
  %28 = getelementptr inbounds i8, i8* %7, i32 28
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4, !tbaa !3
  %31 = getelementptr inbounds i8, i8* %7, i32 32
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !3
  %34 = getelementptr inbounds i8, i8* %7, i32 36
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4, !tbaa !3
  %37 = getelementptr inbounds i8, i8* %7, i32 40
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !3
  %40 = getelementptr inbounds i8, i8* %7, i32 44
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4, !tbaa !3
  %43 = getelementptr inbounds i8, i8* %7, i32 48
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !3
  %46 = getelementptr inbounds i8, i8* %7, i32 52
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4, !tbaa !3
  %49 = getelementptr inbounds i8, i8* %7, i32 56
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !3
  %52 = getelementptr inbounds i8, i8* %7, i32 60
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4, !tbaa !3
  %55 = getelementptr inbounds i8, i8* %7, i32 64
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !3
  %58 = getelementptr inbounds i8, i8* %7, i32 76
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4, !tbaa !3
  %61 = getelementptr inbounds i8, i8* %7, i32 80
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 4, !tbaa !3
  %64 = getelementptr inbounds i8, i8* %7, i32 84
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4, !tbaa !3
  %67 = getelementptr inbounds i8, i8* %7, i32 100
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !3
  %70 = getelementptr inbounds i8, i8* %7, i32 104
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4, !tbaa !3
  %73 = getelementptr inbounds i8, i8* %7, i32 108
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4, !tbaa !3
  %76 = getelementptr inbounds i8, i8* %7, i32 112
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !3
  %79 = getelementptr inbounds i8, i8* %7, i32 116
  %80 = bitcast i8* %79 to i32*
  %81 = load i32, i32* %80, align 4, !tbaa !3
  %82 = getelementptr inbounds i8, i8* %7, i32 124
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4, !tbaa !3
  %85 = sext i32 %21 to i64
  %86 = add nsw i64 %85, 15
  %87 = ashr i64 %86, 4
  %88 = sext i32 %12 to i64
  %89 = add nsw i64 %88, 15
  %90 = ashr i64 %89, 4
  %91 = sext i32 %24 to i64
  %92 = mul nsw i64 %90, %91
  %93 = sext i32 %27 to i64
  %94 = mul nsw i64 %92, %93
  %95 = add nsw i64 %87, -1
  %96 = sext i32 %63 to i64
  %97 = sdiv i64 %95, %96
  %98 = add nsw i64 %97, 1
  %99 = add nsw i64 %91, -1
  %100 = sext i32 %30 to i64
  %101 = mul nsw i64 %99, %100
  %102 = mul nsw i32 %81, %75
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 4
  %105 = sext i32 %45 to i64
  %106 = freeze i64 %104
  %107 = freeze i64 %105
  %108 = sdiv i64 %106, %107
  %109 = mul i64 %108, %107
  %110 = sub i64 %106, %109
  %111 = sext i32 %84 to i64
  %112 = add nsw i64 %101, 1
  %113 = add nsw i64 %93, -1
  %114 = sext i32 %33 to i64
  %115 = mul nsw i64 %113, %114
  %116 = add nsw i64 %115, 1
  %117 = mul nsw i64 %116, %112
  %118 = sdiv i64 %111, %117
  %119 = mul nsw i32 %45, %42
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %94, -1
  %122 = sext i32 %78 to i64
  %123 = sdiv i64 %121, %122
  %124 = sdiv i64 %90, %118
  %125 = sdiv i64 %123, %124
  %126 = add i64 %125, 1
  %127 = mul i64 %126, %124
  %128 = mul nsw i64 %127, %122
  %129 = icmp slt i64 %128, %94
  %130 = select i1 %129, i64 %128, i64 %94
  %131 = add nsw i64 %128, -1
  %132 = freeze i64 %131
  %133 = freeze i64 %93
  %134 = sdiv i64 %132, %133
  %135 = mul i64 %134, %133
  %136 = sub i64 %132, %135
  %137 = ashr i64 %136, 63
  %138 = add nsw i64 %137, %134
  %139 = freeze i64 %138
  %140 = freeze i64 %91
  %141 = sdiv i64 %139, %140
  %142 = mul i64 %141, %140
  %143 = sub i64 %139, %142
  %144 = ashr i64 %143, 63
  %145 = add i64 %141, 1
  %146 = add i64 %145, %144
  %147 = icmp slt i64 %146, %90
  %148 = select i1 %147, i64 %146, i64 %90
  %149 = add nsw i64 %105, -1
  %150 = sext i32 %39 to i64
  %151 = mul nsw i64 %149, %150
  %152 = add nsw i64 %151, %115
  %153 = add nsw i64 %152, 1
  %154 = sext i32 %54 to i64
  %155 = sub nsw i64 %153, %154
  %156 = sext i32 %18 to i64
  %157 = icmp slt i64 %155, %156
  %158 = select i1 %157, i64 %155, i64 %156
  %159 = mul nsw i32 %72, %69
  %160 = sext i32 %159 to i64
  %161 = freeze i64 %160
  %162 = sdiv i64 %161, 255
  %163 = mul i64 %162, 255
  %164 = sub i64 %161, %163
  %165 = mul nsw i32 %27, %24
  %166 = sext i32 %165 to i64
  %167 = sub i32 %18, %27
  %168 = add i32 %167, %54
  %169 = add i32 %168, %57
  %170 = sdiv i32 %169, %39
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, 1
  %173 = freeze i64 %172
  %174 = sdiv i64 16, %173
  %175 = mul i64 %174, %173
  %176 = sub i64 16, %175
  %177 = sext i32 %75 to i64
  %178 = shl nsw i64 %177, 4
  %179 = mul nsw i32 %66, %63
  %180 = sext i32 %179 to i64
  %181 = sext i32 %9 to i64
  %182 = add nsw i64 %181, -1
  %183 = sext i32 %60 to i64
  %184 = sdiv i64 %182, %183
  %185 = add nsw i64 %184, %181
  %186 = add nsw i64 %184, 1
  %187 = sdiv i64 %185, %186
  %188 = sdiv i64 %95, %160
  %189 = sdiv i64 %188, %96
  %190 = add nsw i64 %189, 1
  %191 = and i64 %86, -16
  %192 = add nsw i64 %120, -1
  %193 = sdiv i64 %192, %178
  %194 = sext i32 %81 to i64
  %195 = sdiv i64 %193, %194
  %196 = add nsw i64 %195, 1
  %197 = add nsw i64 %196, %193
  %198 = sdiv i64 %197, %196
  %199 = sext i32 %66 to i64
  %200 = sdiv i64 %195, %199
  %201 = add nsw i64 %200, 1
  %202 = add nsw i32 %48, %15
  %203 = sext i32 %202 to i64
  %204 = shl nsw i64 %158, 4
  %205 = mul nsw i32 %18, %15
  %206 = sext i32 %205 to i64
  %207 = shl nsw i64 %206, 4
  %208 = shl nsw i64 %156, 4
  %209 = add nsw i32 %45, -1
  %210 = mul nsw i32 %209, %39
  %211 = add nsw i32 %27, -1
  %212 = mul nsw i32 %33, %211
  %213 = add i32 %212, 1
  %214 = add i32 %213, %210
  %215 = sub nsw i32 %214, %54
  %216 = sext i32 %215 to i64
  %217 = icmp slt i64 %216, %156
  %218 = select i1 %217, i64 %216, i64 %156
  %219 = sext i32 %214 to i64
  %220 = icmp slt i64 %154, %219
  %221 = select i1 %220, i64 %154, i64 %219
  %222 = shl nsw i64 %221, 32
  %223 = sub nsw i64 %151, %154
  %224 = add nsw i64 %223, %115
  %225 = sub nsw i64 1, %156
  %226 = add i64 %225, %224
  %227 = icmp slt i64 %226, %152
  %228 = select i1 %227, i64 %226, i64 %152
  %229 = shl nsw i64 %154, 4
  %230 = sdiv i64 %218, 65535
  %231 = mul nsw i64 %230, 1048560
  %232 = srem i64 %158, 65535
  %233 = mul nsw i64 %201, %186
  %234 = add nsw i64 %233, -1
  %235 = ashr i64 %234, 1
  %236 = mul nsw i64 %198, %190
  %237 = add nsw i64 %236, 1
  %238 = ashr i64 %237, 1
  %239 = add nsw i64 %120, 15
  %240 = ashr i64 %239, 4
  %241 = icmp slt i64 %152, %154
  %242 = select i1 %241, i64 %153, i64 %154
  %243 = icmp slt i64 %242, %154
  %244 = select i1 %243, i64 %242, i64 %154
  %245 = mul nsw i64 %126, %124
  %246 = add nsw i64 %245, 1
  %247 = ashr i64 %246, 1
  %248 = mul nsw i64 %162, 65280
  %249 = shl nsw i64 %94, 4
  %250 = add nsw i64 %247, -1
  %251 = shl nsw i64 %177, 8
  %252 = or i64 %251, 255
  %253 = sdiv i64 %252, 256
  %254 = shl nsw i64 %253, 8
  %255 = shl nsw i64 %253, 4
  %256 = sub nsw i64 %120, %178
  %257 = sext i32 %72 to i64
  %258 = add nsw i64 %257, -1
  %259 = add nsw i64 %238, -1
  %260 = add nsw i64 %235, -1
  %261 = and i64 %233, 1
  %262 = or i64 %233, -2
  %263 = add nsw i64 %262, %233
  %264 = freeze i64 %263
  %265 = freeze i64 %201
  %266 = sdiv i64 %264, %265
  %267 = mul i64 %266, %265
  %268 = sub i64 %264, %267
  %269 = ashr i64 %268, 63
  %270 = add nsw i64 %269, %266
  %271 = sub nsw i64 %186, %270
  %272 = mul nsw i64 %271, %201
  %273 = add i64 %272, %262
  %274 = shl i32 %75, 10
  %275 = mul i32 %274, %159
  %276 = shl i32 %75, 9
  %277 = mul i32 %276, %78
  %278 = shl i32 %159, 9
  %279 = mul i32 %278, %78
  %280 = shl i64 %94, 9
  %281 = mul i64 %280, %98
  %282 = tail call i64 @_Z11intrinsic_2y(i64 0)
  %283 = trunc i64 %282 to i32
  %284 = inttoptr i32 %283 to i16*
  %285 = trunc i64 %281 to i32
  %286 = inttoptr i32 %285 to i16*
  %287 = icmp eq i64 %110, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %4
  %289 = shl nsw i64 %103, 5
  %290 = srem i64 %289, %105
  %291 = icmp eq i64 %290, 0
  %292 = select i1 %291, i32 1, i32 2
  br label %293

293:                                              ; preds = %4, %288
  %294 = phi i32 [ %292, %288 ], [ 0, %4 ]
  %295 = zext i32 %294 to i64
  %296 = add nsw i64 %108, %295
  %297 = sext i32 %42 to i64
  %298 = icmp slt i64 %296, %297
  %299 = select i1 %298, i64 %296, i64 %297
  %300 = add nsw i64 %299, -1
  %301 = sext i32 %36 to i64
  %302 = mul nsw i64 %300, %301
  %303 = add i64 %112, %302
  %304 = sext i32 %15 to i64
  %305 = icmp slt i64 %303, %304
  %306 = select i1 %305, i64 %303, i64 %304
  %307 = shl nsw i64 %156, 5
  %308 = mul i64 %307, %118
  %309 = mul i64 %308, %306
  %310 = add nsw i64 %309, %281
  %311 = trunc i64 %310 to i32
  %312 = inttoptr i32 %311 to i16*
  %313 = load i64, i64* @block_idx, align 8, !tbaa !7
  %314 = trunc i64 %313 to i32
  %315 = add nsw i32 %9, -1
  %316 = sdiv i32 %315, %60
  %317 = add nsw i32 %316, %9
  %318 = add nsw i32 %316, 1
  %319 = sdiv i32 %317, %318
  %320 = mul nsw i32 %319, %179
  %321 = icmp sgt i32 %320, %314
  br i1 %321, label %322, label %6099

322:                                              ; preds = %293
  %323 = tail call i64 @_Z11intrinsic_2y(i64 0)
  %324 = trunc i64 %323 to i32
  %325 = inttoptr i32 %324 to float*
  %326 = tail call i64 @_Z11intrinsic_2y(i64 0)
  %327 = trunc i64 %326 to i32
  %328 = inttoptr i32 %327 to i16*
  %329 = tail call i64 @_Z11intrinsic_2y(i64 0)
  %330 = trunc i64 %329 to i32
  %331 = inttoptr i32 %330 to i16*
  %332 = inttoptr i32 %279 to i16*
  %333 = inttoptr i32 %277 to i16*
  %334 = tail call i64 @_Z11intrinsic_2y(i64 0)
  %335 = trunc i64 %334 to i32
  %336 = inttoptr i32 %335 to i16*
  %337 = inttoptr i32 %275 to float*
  %338 = load i64, i64* @block_idx, align 8, !tbaa !7
  %339 = trunc i64 %338 to i32
  %340 = sext i32 %339 to i64
  %341 = sdiv i64 %340, %180
  %342 = srem i64 %341, %187
  %343 = freeze i32 %339
  %344 = freeze i32 %66
  %345 = sdiv i32 %343, %344
  %346 = srem i32 %345, %63
  %347 = sext i32 %346 to i64
  %348 = mul i32 %345, %344
  %349 = sub i32 %343, %348
  %350 = sext i32 %349 to i64
  %351 = mul nsw i64 %190, %347
  %352 = add nsw i64 %351, %189
  %353 = mul nsw i64 %352, %160
  %354 = add nsw i64 %353, %160
  %355 = icmp slt i64 %354, %87
  %356 = select i1 %355, i64 %354, i64 %87
  %357 = mul nsw i64 %351, %160
  %358 = sub nsw i64 %356, %357
  %359 = sub nsw i64 %354, %357
  %360 = icmp sgt i64 %359, 0
  %361 = select i1 %360, i64 %359, i64 0
  %362 = icmp sgt i64 %358, 0
  %363 = select i1 %362, i64 %358, i64 0
  %364 = and i1 %129, %355
  %365 = icmp sgt i64 %130, 0
  br i1 %364, label %366, label %421

366:                                              ; preds = %322
  %367 = and i1 %365, %360
  br i1 %367, label %368, label %459

368:                                              ; preds = %366
  %369 = icmp sgt i64 %361, 4095
  %370 = icmp sgt i64 %130, 4095
  %371 = or i1 %370, %369
  %372 = icmp slt i64 %358, %361
  %373 = or i1 %372, %371
  %374 = icmp slt i64 %87, %361
  %375 = or i1 %374, %373
  br i1 %375, label %376, label %391

376:                                              ; preds = %368
  %377 = shl nsw i64 %361, 8
  %378 = urem i64 %377, 4293853200
  %379 = sub nsw i64 %377, %378
  %380 = freeze i64 %377
  %381 = udiv i64 %380, 1048560
  %382 = urem i64 %381, 4095
  %383 = mul nuw nsw i64 %382, 1048560
  %384 = add nsw i64 %383, %379
  %385 = shl i64 %358, 8
  %386 = mul i64 %381, 1048560
  %387 = sub i64 %380, %386
  %388 = add nuw nsw i64 %387, 15
  %389 = lshr i64 %388, 4
  %390 = trunc i64 %389 to i16
  br label %405

391:                                              ; preds = %368
  %392 = inttoptr i32 %283 to i8*
  %393 = trunc i64 %357 to i32
  %394 = shl i32 %393, 8
  %395 = getelementptr inbounds i16, i16* %1, i32 %394
  %396 = bitcast i16* %395 to i8*
  %397 = trunc i64 %130 to i16
  %398 = shl nsw i64 %361, 4
  %399 = trunc i64 %398 to i16
  %400 = sub nsw i64 %191, %398
  %401 = trunc i64 %400 to i16
  %402 = shl nsw i64 %358, 4
  %403 = sub nsw i64 %402, %398
  %404 = trunc i64 %403 to i16
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %392, i8* %396, i8 zeroext 0, i16 zeroext %397, i16 zeroext %399, i16 zeroext %401, i16 zeroext %404, i32 0)
  br label %459

405:                                              ; preds = %376, %405
  %406 = phi i64 [ 0, %376 ], [ %419, %405 ]
  %407 = mul i64 %385, %406
  %408 = add nsw i64 %407, %384
  %409 = trunc i64 %408 to i32
  %410 = getelementptr inbounds i16, i16* %284, i32 %409
  %411 = bitcast i16* %410 to i8*
  %412 = mul i64 %406, %87
  %413 = add i64 %412, %357
  %414 = shl i64 %413, 8
  %415 = add i64 %414, %384
  %416 = trunc i64 %415 to i32
  %417 = getelementptr inbounds i16, i16* %1, i32 %416
  %418 = bitcast i16* %417 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %411, i8* %418, i8 zeroext 0, i16 zeroext 1, i16 zeroext %390, i16 zeroext 0, i16 zeroext 0, i32 0)
  %419 = add nuw nsw i64 %406, 1
  %420 = icmp slt i64 %419, %130
  br i1 %420, label %405, label %459

421:                                              ; preds = %322
  %422 = and i1 %365, %362
  br i1 %422, label %423, label %459

423:                                              ; preds = %421
  %424 = icmp sgt i64 %130, 4095
  %425 = icmp slt i64 %87, %363
  %426 = or i1 %424, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %423
  %428 = trunc i64 %363 to i16
  %429 = shl i16 %428, 4
  br label %444

430:                                              ; preds = %423
  %431 = inttoptr i32 %283 to i8*
  %432 = trunc i64 %357 to i32
  %433 = shl i32 %432, 8
  %434 = getelementptr inbounds i16, i16* %1, i32 %433
  %435 = bitcast i16* %434 to i8*
  %436 = trunc i64 %130 to i16
  %437 = shl nsw i64 %363, 4
  %438 = trunc i64 %437 to i16
  %439 = sub nsw i64 %191, %437
  %440 = trunc i64 %439 to i16
  %441 = shl nsw i64 %358, 4
  %442 = sub nsw i64 %441, %437
  %443 = trunc i64 %442 to i16
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %431, i8* %435, i8 zeroext 0, i16 zeroext %436, i16 zeroext %438, i16 zeroext %440, i16 zeroext %443, i32 0)
  br label %459

444:                                              ; preds = %427, %444
  %445 = phi i64 [ 0, %427 ], [ %457, %444 ]
  %446 = mul nsw i64 %445, %358
  %447 = trunc i64 %446 to i32
  %448 = shl i32 %447, 8
  %449 = getelementptr inbounds i16, i16* %284, i32 %448
  %450 = bitcast i16* %449 to i8*
  %451 = mul nsw i64 %445, %87
  %452 = add i64 %451, %357
  %453 = trunc i64 %452 to i32
  %454 = shl i32 %453, 8
  %455 = getelementptr inbounds i16, i16* %1, i32 %454
  %456 = bitcast i16* %455 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %450, i8* %456, i8 zeroext 0, i16 zeroext 1, i16 zeroext %429, i16 zeroext 0, i16 zeroext 0, i32 0)
  %457 = add nuw nsw i64 %445, 1
  %458 = icmp slt i64 %457, %130
  br i1 %458, label %444, label %459

459:                                              ; preds = %444, %405, %421, %430, %366, %391
  %460 = mul nsw i64 %342, %186
  %461 = mul nsw i64 %201, %350
  %462 = add nsw i64 %461, 1
  %463 = mul i64 %198, %177
  %464 = shl i64 %463, 4
  %465 = mul i64 %464, %462
  %466 = add nsw i64 %465, -1
  %467 = freeze i64 %466
  %468 = freeze i64 %105
  %469 = sdiv i64 %467, %468
  %470 = mul i64 %469, %468
  %471 = sub i64 %467, %470
  %472 = ashr i64 %471, 63
  %473 = add nsw i64 %472, %469
  %474 = mul nsw i64 %473, %301
  %475 = add nsw i64 %474, %101
  %476 = add nsw i64 %475, 1
  %477 = sext i32 %48 to i64
  %478 = sub nsw i64 %476, %477
  %479 = icmp slt i64 %478, %304
  %480 = select i1 %479, i64 %478, i64 %304
  %481 = mul i64 %464, %461
  %482 = sdiv i64 %481, %105
  %483 = mul nsw i64 %482, %301
  %484 = sub nsw i64 %483, %477
  %485 = icmp sgt i64 %484, 0
  %486 = select i1 %485, i64 %484, i64 0
  %487 = sub nsw i64 %480, %486
  %488 = icmp slt i64 %476, %203
  %489 = select i1 %488, i64 %476, i64 %203
  %490 = sub nsw i64 %489, %483
  %491 = sub nsw i64 %477, %483
  %492 = icmp sgt i64 %491, 0
  %493 = select i1 %492, i64 %491, i64 0
  %494 = sub i64 %490, %493
  %495 = icmp sgt i64 %494, 0
  %496 = select i1 %495, i64 %494, i64 0
  %497 = icmp sgt i64 %148, %496
  %498 = select i1 %497, i64 %148, i64 %496
  %499 = icmp slt i64 %148, %496
  %500 = mul nsw i64 %487, %158
  %501 = shl nsw i64 %500, 4
  %502 = select i1 %497, i64 %496, i64 %148
  %503 = select i1 %497, i64 %204, i64 %501
  %504 = select i1 %499, i64 %208, i64 %207
  %505 = select i1 %499, i64 %148, i64 %502
  %506 = select i1 %499, i64 %501, i64 %503
  %507 = select i1 %497, i64 %501, i64 %204
  %508 = select i1 %497, i64 %208, i64 %207
  %509 = select i1 %499, i64 %207, i64 %508
  %510 = select i1 %497, i64 %504, i64 %208
  %511 = icmp slt i64 %460, %181
  br i1 %511, label %512, label %635

512:                                              ; preds = %459
  %513 = icmp sgt i64 %148, 0
  %514 = and i1 %513, %495
  %515 = icmp sgt i64 %158, 0
  %516 = and i1 %515, %514
  br i1 %516, label %517, label %635

517:                                              ; preds = %512
  %518 = icmp sgt i64 %487, 0
  br i1 %518, label %519, label %556

519:                                              ; preds = %517
  %520 = shl i64 %487, 16
  %521 = icmp slt i64 %224, %156
  %522 = select i1 %521, i64 0, i64 %228
  %523 = sext i32 %57 to i64
  %524 = icmp slt i64 %522, %523
  %525 = select i1 %524, i64 %522, i64 %523
  %526 = shl i64 %525, 40
  %527 = icmp slt i64 %484, 0
  %528 = sub nsw i64 0, %484
  %529 = sub nsw i64 %476, %483
  %530 = icmp sgt i64 %529, %528
  %531 = select i1 %530, i64 %528, i64 %529
  %532 = select i1 %527, i64 %531, i64 0
  %533 = icmp slt i64 %532, %477
  %534 = select i1 %533, i64 %532, i64 %477
  %535 = shl i64 %534, 48
  %536 = sub i64 %112, %483
  %537 = add i64 %536, %474
  %538 = add i64 %537, %484
  %539 = icmp sgt i64 %538, %304
  %540 = sub nsw i64 %538, %304
  %541 = sub nsw i64 %475, %483
  %542 = icmp slt i64 %540, %541
  %543 = select i1 %542, i64 %540, i64 %541
  %544 = select i1 %539, i64 %543, i64 0
  %545 = sext i32 %51 to i64
  %546 = icmp slt i64 %544, %545
  %547 = select i1 %546, i64 %544, i64 %545
  %548 = shl i64 %547, 56
  %549 = or i64 %222, %218
  %550 = or i64 %549, %526
  %551 = or i64 %550, %520
  %552 = or i64 %551, %535
  %553 = or i64 %552, %548
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %556, label %555

555:                                              ; preds = %519
  tail call void @_Z11intrinsic_3y(i64 %553)
  br label %556

556:                                              ; preds = %555, %519, %517
  %557 = phi i64 [ 0, %517 ], [ 0, %519 ], [ %553, %555 ]
  %558 = icmp slt i64 %158, 65536
  %559 = icmp slt i64 %498, 4096
  %560 = and i1 %558, %559
  %561 = icmp slt i64 %510, 1048560
  %562 = and i1 %560, %561
  %563 = icmp slt i64 %507, 1048560
  %564 = and i1 %563, %562
  br i1 %564, label %565, label %599

565:                                              ; preds = %556
  %566 = sub nsw i64 %507, %204
  %567 = icmp sgt i64 %566, -16
  br i1 %567, label %568, label %599

568:                                              ; preds = %565
  %569 = sub nsw i64 %510, %204
  %570 = icmp sgt i64 %569, -16
  br i1 %570, label %571, label %599

571:                                              ; preds = %568
  %572 = icmp sgt i64 %505, 0
  br i1 %572, label %573, label %635

573:                                              ; preds = %571
  %574 = mul nsw i64 %90, %304
  %575 = mul i64 %574, %460
  %576 = sub i64 %575, %477
  %577 = add i64 %576, %483
  %578 = mul i64 %208, %577
  %579 = sub i64 %578, %229
  %580 = trunc i64 %498 to i16
  %581 = trunc i64 %158 to i16
  %582 = sdiv i64 %569, 16
  %583 = trunc i64 %582 to i16
  %584 = sdiv i64 %566, 16
  %585 = trunc i64 %584 to i16
  br label %586

586:                                              ; preds = %573, %586
  %587 = phi i64 [ 0, %573 ], [ %597, %586 ]
  %588 = mul nsw i64 %587, %506
  %589 = trunc i64 %588 to i32
  %590 = getelementptr inbounds i16, i16* %286, i32 %589
  %591 = bitcast i16* %590 to i8*
  %592 = mul nsw i64 %587, %509
  %593 = add i64 %579, %592
  %594 = trunc i64 %593 to i32
  %595 = getelementptr inbounds i16, i16* %0, i32 %594
  %596 = bitcast i16* %595 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %591, i8* %596, i8 zeroext 0, i16 zeroext %580, i16 zeroext %581, i16 zeroext %583, i16 zeroext %585, i32 0)
  %597 = add nuw nsw i64 %587, 1
  %598 = icmp slt i64 %597, %505
  br i1 %598, label %586, label %635

599:                                              ; preds = %568, %565, %556
  %600 = icmp sgt i64 %505, 0
  br i1 %600, label %601, label %635

601:                                              ; preds = %599
  %602 = icmp sgt i64 %498, 0
  %603 = mul nsw i64 %90, %304
  %604 = mul i64 %603, %460
  %605 = sub i64 %604, %477
  %606 = add i64 %605, %483
  %607 = mul i64 %208, %606
  %608 = sub nsw i64 %231, %229
  %609 = add i64 %608, %607
  %610 = trunc i64 %232 to i16
  br label %611

611:                                              ; preds = %601, %618
  %612 = phi i64 [ 0, %601 ], [ %619, %618 ]
  br i1 %602, label %613, label %618

613:                                              ; preds = %611
  %614 = mul nsw i64 %612, %506
  %615 = add nsw i64 %614, %231
  %616 = mul nsw i64 %612, %509
  %617 = add i64 %609, %616
  br label %621

618:                                              ; preds = %621, %611
  %619 = add nuw nsw i64 %612, 1
  %620 = icmp slt i64 %619, %505
  br i1 %620, label %611, label %635

621:                                              ; preds = %613, %621
  %622 = phi i64 [ 0, %613 ], [ %633, %621 ]
  %623 = mul nsw i64 %622, %507
  %624 = add nsw i64 %615, %623
  %625 = trunc i64 %624 to i32
  %626 = getelementptr inbounds i16, i16* %286, i32 %625
  %627 = bitcast i16* %626 to i8*
  %628 = mul nsw i64 %622, %510
  %629 = add i64 %617, %628
  %630 = trunc i64 %629 to i32
  %631 = getelementptr inbounds i16, i16* %0, i32 %630
  %632 = bitcast i16* %631 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %627, i8* %632, i8 zeroext 0, i16 zeroext 1, i16 zeroext %610, i16 zeroext 0, i16 zeroext 0, i32 0)
  %633 = add nuw nsw i64 %622, 1
  %634 = icmp ult i64 %633, %498
  br i1 %634, label %621, label %618

635:                                              ; preds = %618, %586, %599, %571, %512, %459
  %636 = phi i64 [ 0, %512 ], [ 0, %459 ], [ %557, %571 ], [ %557, %599 ], [ %557, %586 ], [ %557, %618 ]
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 4, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 4, i32 3, i32 0)
  tail call void @_Z11intrinsic_76pipe_t(i32 4)
  %637 = icmp sgt i64 %233, 2
  br i1 %637, label %638, label %695

638:                                              ; preds = %635
  %639 = icmp sgt i64 %148, 0
  %640 = icmp sgt i64 %158, 0
  %641 = icmp slt i64 %224, %156
  %642 = select i1 %641, i64 0, i64 %228
  %643 = sext i32 %57 to i64
  %644 = icmp slt i64 %642, %643
  %645 = select i1 %644, i64 %642, i64 %643
  %646 = shl i64 %645, 40
  %647 = sext i32 %51 to i64
  %648 = or i64 %222, %218
  %649 = or i64 %648, %646
  %650 = icmp slt i64 %158, 65536
  %651 = mul nsw i64 %90, %304
  %652 = sub nsw i64 %231, %229
  %653 = trunc i64 %232 to i16
  %654 = trunc i64 %158 to i16
  %655 = icmp sgt i64 %236, 0
  %656 = icmp sgt i64 %245, 0
  %657 = trunc i64 %358 to i16
  %658 = icmp sgt i32 %159, 1
  %659 = trunc i32 %78 to i8
  %660 = icmp slt i64 %164, 1
  %661 = icmp slt i32 %78, 1
  %662 = shl nsw i64 %357, 8
  %663 = sub i64 %248, %662
  %664 = trunc i64 %164 to i8
  %665 = trunc i32 %39 to i8
  %666 = trunc i32 %36 to i8
  %667 = trunc i32 %27 to i8
  %668 = trunc i32 %24 to i8
  %669 = trunc i64 %176 to i32
  %670 = trunc i64 %172 to i32
  %671 = icmp ne i64 %247, 1
  %672 = icmp sgt i32 %72, 0
  %673 = sext i32 %69 to i64
  %674 = icmp sgt i32 %69, 0
  %675 = trunc i64 %253 to i16
  %676 = trunc i32 %69 to i16
  %677 = icmp sgt i32 %119, 65534
  %678 = shl nsw i64 %120, 4
  %679 = inttoptr i32 %335 to i8*
  %680 = icmp slt i32 %119, 65535
  %681 = icmp sgt i64 %256, -1
  %682 = trunc i64 %178 to i16
  %683 = trunc i64 %256 to i16
  %684 = icmp ne i32 %72, 1
  %685 = icmp ne i64 %238, 1
  %686 = icmp ne i64 %235, 1
  %687 = or i1 %660, %661
  %688 = or i1 %660, %661
  %689 = or i1 %660, %661
  %690 = or i1 %660, %661
  %691 = or i1 %660, %661
  %692 = or i1 %660, %661
  %693 = or i1 %660, %661
  %694 = or i1 %660, %661
  br label %698

695:                                              ; preds = %3442, %635
  %696 = phi i64 [ %636, %635 ], [ %2254, %3442 ]
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 4, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 4, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 4, i32 0)
  %697 = icmp eq i64 %261, 0
  br i1 %697, label %3445, label %3618

698:                                              ; preds = %638, %3442
  %699 = phi i64 [ 0, %638 ], [ %3443, %3442 ]
  %700 = phi i64 [ %636, %638 ], [ %2254, %3442 ]
  %701 = shl nuw nsw i64 %699, 1
  %702 = sdiv i64 %701, %201
  %703 = mul nsw i64 %702, %201
  %704 = sub nsw i64 %701, %703
  %705 = add nsw i64 %702, %460
  %706 = add nsw i64 %704, %461
  %707 = add nsw i64 %706, 1
  %708 = mul i64 %464, %707
  %709 = add nsw i64 %708, -1
  %710 = freeze i64 %709
  %711 = freeze i64 %105
  %712 = sdiv i64 %710, %711
  %713 = mul i64 %712, %711
  %714 = sub i64 %710, %713
  %715 = ashr i64 %714, 63
  %716 = add nsw i64 %715, %712
  %717 = mul nsw i64 %716, %301
  %718 = add i64 %112, %717
  %719 = mul nsw i64 %706, %198
  %720 = mul i64 %178, %719
  %721 = freeze i64 %720
  %722 = freeze i64 %105
  %723 = sdiv i64 %721, %722
  %724 = mul i64 %723, %722
  %725 = sub i64 %721, %724
  %726 = ashr i64 %725, 63
  %727 = add nsw i64 %726, %723
  %728 = mul nsw i64 %727, %301
  %729 = sub nsw i64 %728, %477
  %730 = or i64 %701, 1
  %731 = sdiv i64 %730, %201
  %732 = mul nsw i64 %731, %201
  %733 = sub nsw i64 %730, %732
  %734 = add nsw i64 %731, %460
  %735 = add nsw i64 %733, %461
  %736 = add nsw i64 %735, 1
  %737 = mul i64 %464, %736
  %738 = add nsw i64 %737, -1
  %739 = freeze i64 %738
  %740 = freeze i64 %105
  %741 = sdiv i64 %739, %740
  %742 = mul i64 %741, %740
  %743 = sub i64 %739, %742
  %744 = ashr i64 %743, 63
  %745 = add nsw i64 %744, %741
  %746 = mul nsw i64 %745, %301
  %747 = add nsw i64 %746, %101
  %748 = add nsw i64 %747, 1
  %749 = sub nsw i64 %748, %477
  %750 = icmp slt i64 %749, %304
  %751 = select i1 %750, i64 %749, i64 %304
  %752 = mul nsw i64 %735, %198
  %753 = mul i64 %178, %752
  %754 = freeze i64 %753
  %755 = freeze i64 %105
  %756 = sdiv i64 %754, %755
  %757 = mul i64 %756, %755
  %758 = sub i64 %754, %757
  %759 = ashr i64 %758, 63
  %760 = add nsw i64 %759, %756
  %761 = mul nsw i64 %760, %301
  %762 = sub nsw i64 %761, %477
  %763 = icmp sgt i64 %762, 0
  %764 = select i1 %763, i64 %762, i64 0
  %765 = sub nsw i64 %751, %764
  %766 = icmp slt i64 %748, %203
  %767 = select i1 %766, i64 %748, i64 %203
  %768 = sub nsw i64 %767, %761
  %769 = sub nsw i64 %477, %761
  %770 = icmp sgt i64 %769, 0
  %771 = select i1 %770, i64 %769, i64 0
  %772 = sub i64 %768, %771
  %773 = icmp sgt i64 %772, 0
  %774 = select i1 %773, i64 %772, i64 0
  %775 = icmp sgt i64 %148, %774
  %776 = select i1 %775, i64 %148, i64 %774
  %777 = icmp slt i64 %148, %774
  %778 = mul nsw i64 %765, %158
  %779 = shl nsw i64 %778, 4
  %780 = select i1 %775, i64 %774, i64 %148
  %781 = select i1 %775, i64 %204, i64 %779
  %782 = select i1 %777, i64 %208, i64 %207
  %783 = select i1 %777, i64 %148, i64 %780
  %784 = select i1 %777, i64 %779, i64 %781
  %785 = select i1 %775, i64 %779, i64 %204
  %786 = select i1 %775, i64 %208, i64 %207
  %787 = select i1 %777, i64 %207, i64 %786
  %788 = select i1 %775, i64 %782, i64 %208
  %789 = icmp eq i64 %699, 0
  br i1 %789, label %791, label %790

790:                                              ; preds = %698
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 4, i32 0)
  br label %791

791:                                              ; preds = %698, %790
  %792 = icmp slt i64 %734, %181
  %793 = and i1 %639, %773
  %794 = and i1 %640, %793
  %795 = and i1 %792, %794
  br i1 %795, label %796, label %900

796:                                              ; preds = %791
  %797 = icmp sgt i64 %765, 0
  br i1 %797, label %798, label %826

798:                                              ; preds = %796
  %799 = shl i64 %765, 16
  %800 = icmp slt i64 %762, 0
  %801 = sub nsw i64 0, %762
  %802 = sub nsw i64 %748, %761
  %803 = icmp sgt i64 %802, %801
  %804 = select i1 %803, i64 %801, i64 %802
  %805 = select i1 %800, i64 %804, i64 0
  %806 = icmp slt i64 %805, %477
  %807 = select i1 %806, i64 %805, i64 %477
  %808 = shl i64 %807, 48
  %809 = add i64 %112, %746
  %810 = sub i64 %809, %761
  %811 = add i64 %810, %762
  %812 = icmp sgt i64 %811, %304
  %813 = sub nsw i64 %811, %304
  %814 = sub nsw i64 %747, %761
  %815 = icmp slt i64 %813, %814
  %816 = select i1 %815, i64 %813, i64 %814
  %817 = select i1 %812, i64 %816, i64 0
  %818 = icmp slt i64 %817, %647
  %819 = select i1 %818, i64 %817, i64 %647
  %820 = shl i64 %819, 56
  %821 = or i64 %649, %799
  %822 = or i64 %821, %808
  %823 = or i64 %822, %820
  %824 = icmp eq i64 %700, %823
  br i1 %824, label %826, label %825

825:                                              ; preds = %798
  tail call void @_Z11intrinsic_3y(i64 %823)
  br label %826

826:                                              ; preds = %825, %798, %796
  %827 = phi i64 [ %700, %796 ], [ %700, %798 ], [ %823, %825 ]
  %828 = icmp slt i64 %776, 4096
  %829 = and i1 %650, %828
  %830 = icmp slt i64 %788, 1048560
  %831 = and i1 %829, %830
  %832 = icmp slt i64 %785, 1048560
  %833 = and i1 %832, %831
  %834 = icmp sgt i64 %776, 0
  %835 = and i1 %834, %833
  br i1 %835, label %836, label %868

836:                                              ; preds = %826
  %837 = sub nsw i64 %785, %204
  %838 = icmp sgt i64 %837, -16
  br i1 %838, label %839, label %868

839:                                              ; preds = %836
  %840 = sub nsw i64 %788, %204
  %841 = icmp sgt i64 %840, -16
  br i1 %841, label %842, label %868

842:                                              ; preds = %839
  %843 = icmp sgt i64 %783, 0
  br i1 %843, label %844, label %900

844:                                              ; preds = %842
  %845 = mul i64 %651, %734
  %846 = sub i64 %845, %477
  %847 = add i64 %846, %761
  %848 = mul i64 %208, %847
  %849 = sub i64 %848, %229
  %850 = trunc i64 %776 to i16
  %851 = sdiv i64 %840, 16
  %852 = trunc i64 %851 to i16
  %853 = sdiv i64 %837, 16
  %854 = trunc i64 %853 to i16
  br label %855

855:                                              ; preds = %844, %855
  %856 = phi i64 [ 0, %844 ], [ %866, %855 ]
  %857 = mul nsw i64 %856, %784
  %858 = trunc i64 %857 to i32
  %859 = getelementptr inbounds i16, i16* %312, i32 %858
  %860 = bitcast i16* %859 to i8*
  %861 = mul nsw i64 %856, %787
  %862 = add i64 %849, %861
  %863 = trunc i64 %862 to i32
  %864 = getelementptr inbounds i16, i16* %0, i32 %863
  %865 = bitcast i16* %864 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %860, i8* %865, i8 zeroext 0, i16 zeroext %850, i16 zeroext %654, i16 zeroext %852, i16 zeroext %854, i32 0)
  %866 = add nuw nsw i64 %856, 1
  %867 = icmp slt i64 %866, %783
  br i1 %867, label %855, label %900

868:                                              ; preds = %839, %836, %826
  %869 = icmp sgt i64 %783, 0
  br i1 %869, label %870, label %900

870:                                              ; preds = %868
  %871 = mul i64 %651, %734
  %872 = sub i64 %871, %477
  %873 = add i64 %872, %761
  %874 = mul i64 %208, %873
  %875 = add i64 %652, %874
  br label %876

876:                                              ; preds = %870, %883
  %877 = phi i64 [ 0, %870 ], [ %884, %883 ]
  br i1 %834, label %878, label %883

878:                                              ; preds = %876
  %879 = mul nsw i64 %877, %784
  %880 = add nsw i64 %879, %231
  %881 = mul nsw i64 %877, %787
  %882 = add i64 %875, %881
  br label %886

883:                                              ; preds = %886, %876
  %884 = add nuw nsw i64 %877, 1
  %885 = icmp slt i64 %884, %783
  br i1 %885, label %876, label %900

886:                                              ; preds = %878, %886
  %887 = phi i64 [ 0, %878 ], [ %898, %886 ]
  %888 = mul nsw i64 %887, %785
  %889 = add nsw i64 %880, %888
  %890 = trunc i64 %889 to i32
  %891 = getelementptr inbounds i16, i16* %312, i32 %890
  %892 = bitcast i16* %891 to i8*
  %893 = mul nsw i64 %887, %788
  %894 = add i64 %882, %893
  %895 = trunc i64 %894 to i32
  %896 = getelementptr inbounds i16, i16* %0, i32 %895
  %897 = bitcast i16* %896 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %892, i8* %897, i8 zeroext 0, i16 zeroext 1, i16 zeroext %653, i16 zeroext 0, i16 zeroext 0, i32 0)
  %898 = add nuw nsw i64 %887, 1
  %899 = icmp ult i64 %898, %776
  br i1 %899, label %886, label %883

900:                                              ; preds = %883, %855, %868, %842, %791
  %901 = phi i64 [ %700, %791 ], [ %827, %842 ], [ %827, %868 ], [ %827, %855 ], [ %827, %883 ]
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 4, i32 3, i32 0)
  br i1 %789, label %903, label %902

902:                                              ; preds = %900
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 4, i32 3, i32 1)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %903

903:                                              ; preds = %900, %902
  br i1 %655, label %904, label %917

904:                                              ; preds = %903
  %905 = mul nsw i64 %727, %172
  %906 = icmp slt i64 %729, 0
  %907 = sub nsw i64 0, %729
  %908 = sub nsw i64 %718, %728
  %909 = icmp sgt i64 %908, %907
  %910 = select i1 %909, i64 %907, i64 %908
  %911 = select i1 %906, i64 %910, i64 0
  %912 = icmp slt i64 %911, %477
  %913 = select i1 %912, i64 %911, i64 %477
  %914 = icmp slt i64 %705, %181
  %915 = icmp sgt i64 %706, %195
  %916 = mul nsw i64 %705, %87
  br label %980

917:                                              ; preds = %2146, %903
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 4, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  %918 = add nuw nsw i64 %701, 2
  %919 = sdiv i64 %918, %201
  %920 = mul nsw i64 %919, %201
  %921 = sub nsw i64 %918, %920
  %922 = add nsw i64 %919, %460
  %923 = add nsw i64 %921, %461
  %924 = add nsw i64 %923, 1
  %925 = mul i64 %464, %924
  %926 = add nsw i64 %925, -1
  %927 = freeze i64 %926
  %928 = freeze i64 %105
  %929 = sdiv i64 %927, %928
  %930 = mul i64 %929, %928
  %931 = sub i64 %927, %930
  %932 = ashr i64 %931, 63
  %933 = add nsw i64 %932, %929
  %934 = mul nsw i64 %933, %301
  %935 = add nsw i64 %934, %101
  %936 = add nsw i64 %935, 1
  %937 = sub nsw i64 %936, %477
  %938 = icmp slt i64 %937, %304
  %939 = select i1 %938, i64 %937, i64 %304
  %940 = mul i64 %464, %923
  %941 = freeze i64 %940
  %942 = freeze i64 %105
  %943 = sdiv i64 %941, %942
  %944 = mul i64 %943, %942
  %945 = sub i64 %941, %944
  %946 = ashr i64 %945, 63
  %947 = add nsw i64 %946, %943
  %948 = mul nsw i64 %947, %301
  %949 = sub nsw i64 %948, %477
  %950 = icmp sgt i64 %949, 0
  %951 = select i1 %950, i64 %949, i64 0
  %952 = sub nsw i64 %939, %951
  %953 = icmp slt i64 %936, %203
  %954 = select i1 %953, i64 %936, i64 %203
  %955 = sub nsw i64 %954, %948
  %956 = sub nsw i64 %477, %948
  %957 = icmp sgt i64 %956, 0
  %958 = select i1 %957, i64 %956, i64 0
  %959 = sub i64 %955, %958
  %960 = icmp sgt i64 %959, 0
  %961 = select i1 %960, i64 %959, i64 0
  %962 = icmp sgt i64 %148, %961
  %963 = select i1 %962, i64 %148, i64 %961
  %964 = icmp slt i64 %148, %961
  %965 = mul nsw i64 %952, %158
  %966 = shl nsw i64 %965, 4
  %967 = select i1 %962, i64 %961, i64 %148
  %968 = select i1 %962, i64 %204, i64 %966
  %969 = select i1 %964, i64 %208, i64 %207
  %970 = select i1 %964, i64 %148, i64 %967
  %971 = select i1 %964, i64 %966, i64 %968
  %972 = select i1 %962, i64 %966, i64 %204
  %973 = select i1 %962, i64 %208, i64 %207
  %974 = select i1 %964, i64 %207, i64 %973
  %975 = select i1 %962, i64 %969, i64 %208
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 4, i32 0)
  %976 = icmp slt i64 %922, %181
  %977 = and i1 %639, %960
  %978 = and i1 %640, %977
  %979 = and i1 %976, %978
  br i1 %979, label %2149, label %2253

980:                                              ; preds = %904, %2146
  %981 = phi i64 [ 0, %904 ], [ %2147, %2146 ]
  %982 = shl nuw nsw i64 %981, 1
  %983 = sdiv i64 %982, %198
  %984 = mul nsw i64 %983, %198
  %985 = sub nsw i64 %982, %984
  %986 = add nsw i64 %983, %351
  %987 = mul nsw i64 %986, %160
  %988 = sub nsw i64 %87, %987
  %989 = icmp sgt i64 %988, %160
  %990 = select i1 %989, i64 %160, i64 %988
  %991 = icmp sgt i64 %990, 0
  %992 = select i1 %991, i64 %990, i64 0
  %993 = add nsw i64 %985, %719
  %994 = add nsw i64 %993, 1
  %995 = mul nsw i64 %994, %177
  %996 = icmp slt i64 %995, %240
  %997 = select i1 %996, i64 %995, i64 %240
  %998 = shl nsw i64 %997, 4
  %999 = mul nsw i64 %993, %177
  %1000 = shl nsw i64 %999, 4
  %1001 = sub nsw i64 %998, %1000
  %1002 = sub nsw i64 %240, %999
  %1003 = icmp sgt i64 %1002, %177
  %1004 = select i1 %1003, i64 %177, i64 %1002
  %1005 = icmp sgt i64 %1004, 0
  %1006 = select i1 %1005, i64 %1004, i64 0
  %1007 = sub nsw i64 %1000, %905
  %1008 = freeze i64 %1007
  %1009 = freeze i64 %172
  %1010 = sdiv i64 %1008, %1009
  %1011 = mul i64 %1010, %1009
  %1012 = sub i64 %1008, %1011
  %1013 = mul nsw i64 %1010, %301
  %1014 = sub nsw i64 %1013, %913
  %1015 = mul nsw i64 %1012, %150
  %1016 = sub nsw i64 %1015, %244
  %1017 = sub nsw i64 %120, %1000
  %1018 = icmp slt i64 %178, %1017
  %1019 = select i1 %1018, i64 %178, i64 %1017
  %1020 = icmp sgt i64 %1019, 0
  %1021 = select i1 %1020, i64 %1019, i64 0
  %1022 = icmp eq i64 %981, 0
  br i1 %1022, label %1024, label %1023

1023:                                             ; preds = %980
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %1024

1024:                                             ; preds = %980, %1023
  br i1 %656, label %1025, label %1056

1025:                                             ; preds = %1024
  %1026 = icmp slt i64 %992, 2
  %1027 = icmp slt i64 %990, 2
  %1028 = and i1 %1027, %1026
  %1029 = mul i64 %983, %160
  %1030 = trunc i64 %992 to i8
  %1031 = icmp sgt i64 %990, 1
  %1032 = or i1 %658, %1031
  %1033 = shl i64 %990, 8
  %1034 = trunc i64 %1016 to i16
  %1035 = trunc i64 %1014 to i16
  %1036 = trunc i64 %1010 to i32
  %1037 = trunc i64 %1012 to i32
  %1038 = add nsw i64 %1006, -1
  %1039 = icmp sgt i64 %1006, 1
  %1040 = trunc i64 %1006 to i8
  %1041 = and i1 %991, %1005
  %1042 = trunc i64 %1006 to i16
  %1043 = shl i16 %1042, 4
  %1044 = trunc i64 %992 to i16
  %1045 = shl i16 %1044, 4
  %1046 = icmp sgt i64 %1006, 4
  %1047 = icmp sgt i64 %992, 1
  %1048 = icmp sgt i64 %1006, 2
  %1049 = icmp sgt i64 %992, 2
  %1050 = and i1 %1047, %1046
  %1051 = and i1 %1049, %1048
  %1052 = or i1 %1050, %1051
  %1053 = and i1 %1047, %1046
  %1054 = and i1 %1049, %1048
  %1055 = or i1 %1053, %1054
  br label %1057

1056:                                             ; preds = %1391, %1024
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br i1 %1022, label %1395, label %1394

1057:                                             ; preds = %1025, %1391
  %1058 = phi i64 [ 0, %1025 ], [ %1392, %1391 ]
  %1059 = shl nuw nsw i64 %1058, 1
  %1060 = sdiv i64 %1059, %126
  %1061 = mul nsw i64 %1060, %126
  %1062 = mul nsw i64 %1059, %122
  %1063 = sub nsw i64 %94, %1062
  %1064 = icmp sgt i64 %1063, %122
  %1065 = select i1 %1064, i64 %122, i64 %1063
  %1066 = icmp sgt i64 %1065, 0
  %1067 = select i1 %1066, i64 %1065, i64 0
  %1068 = freeze i64 %1062
  %1069 = freeze i64 %166
  %1070 = sdiv i64 %1068, %1069
  %1071 = mul i64 %1070, %1069
  %1072 = sub i64 %1068, %1071
  %1073 = sdiv i64 %1072, %93
  %1074 = srem i64 %1062, %93
  %1075 = icmp eq i64 %1058, 0
  br i1 %1075, label %1077, label %1076

1076:                                             ; preds = %1057
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %1077

1077:                                             ; preds = %1057, %1076
  %1078 = and i1 %989, %1064
  br i1 %1078, label %1079, label %1102

1079:                                             ; preds = %1077
  br i1 %1032, label %1086, label %1080

1080:                                             ; preds = %1079
  %1081 = mul nsw i64 %1062, %358
  %1082 = add i64 %1029, %1081
  %1083 = trunc i64 %1082 to i32
  %1084 = shl i32 %1083, 8
  %1085 = getelementptr inbounds i16, i16* %284, i32 %1084
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %1085, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1126

1086:                                             ; preds = %1079
  br i1 %687, label %1126, label %1087

1087:                                             ; preds = %1086, %1087
  %1088 = phi i64 [ %1100, %1087 ], [ 0, %1086 ]
  %1089 = mul i64 %1033, %1088
  %1090 = add nsw i64 %1089, %248
  %1091 = trunc i64 %1090 to i32
  %1092 = getelementptr inbounds i16, i16* %328, i32 %1091
  %1093 = add i64 %1088, %1062
  %1094 = mul i64 %1093, %358
  %1095 = add i64 %1094, %987
  %1096 = shl i64 %1095, 8
  %1097 = add i64 %663, %1096
  %1098 = trunc i64 %1097 to i32
  %1099 = getelementptr inbounds i16, i16* %284, i32 %1098
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1092, i16* %1099, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1100 = add nuw nsw i64 %1088, 1
  %1101 = icmp slt i64 %1100, %122
  br i1 %1101, label %1087, label %1126

1102:                                             ; preds = %1077
  %1103 = and i1 %991, %1066
  br i1 %1103, label %1104, label %1126

1104:                                             ; preds = %1102
  br i1 %1028, label %1105, label %1112

1105:                                             ; preds = %1104
  %1106 = mul nsw i64 %1062, %358
  %1107 = add i64 %1029, %1106
  %1108 = trunc i64 %1107 to i32
  %1109 = shl i32 %1108, 8
  %1110 = getelementptr inbounds i16, i16* %284, i32 %1109
  %1111 = trunc i64 %1067 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %1110, i16 zeroext 0, i8 zeroext %1111, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1126

1112:                                             ; preds = %1104, %1112
  %1113 = phi i64 [ %1124, %1112 ], [ 0, %1104 ]
  %1114 = mul nsw i64 %1113, %990
  %1115 = trunc i64 %1114 to i32
  %1116 = shl i32 %1115, 8
  %1117 = getelementptr inbounds i16, i16* %328, i32 %1116
  %1118 = add i64 %1113, %1062
  %1119 = mul i64 %1118, %358
  %1120 = add i64 %1029, %1119
  %1121 = trunc i64 %1120 to i32
  %1122 = shl i32 %1121, 8
  %1123 = getelementptr inbounds i16, i16* %284, i32 %1122
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1117, i16* %1123, i16 zeroext 0, i8 zeroext %1030, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1124 = add nuw nsw i64 %1113, 1
  %1125 = icmp ult i64 %1124, %1067
  br i1 %1125, label %1112, label %1126

1126:                                             ; preds = %1112, %1087, %1086, %1102, %1105, %1080
  %1127 = and i1 %1005, %1066
  %1128 = and i1 %914, %1127
  br i1 %1128, label %1129, label %1200

1129:                                             ; preds = %1126
  %1130 = trunc i64 %1074 to i8
  %1131 = trunc i64 %1073 to i8
  %1132 = trunc i64 %1070 to i16
  %1133 = icmp slt i64 %1067, %1006
  %1134 = trunc i64 %1067 to i8
  %1135 = select i1 %1133, i8 %1134, i8 1
  %1136 = zext i1 %1133 to i8
  %1137 = select i1 %1133, i64 %1006, i64 %1067
  %1138 = trunc i64 %1137 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %286, i8 zeroext %1130, i8 zeroext %1131, i16 signext %1034, i16 signext %1035, i16 zeroext %1132, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1135, i8 zeroext %1136, i8 zeroext %1138, i32 0)
  %1139 = add nuw nsw i64 %1067, %1006
  %1140 = icmp eq i64 %1139, 2
  br i1 %1140, label %1200, label %1141

1141:                                             ; preds = %1129
  br i1 %1133, label %1170, label %1142

1142:                                             ; preds = %1141
  br i1 %1039, label %1143, label %1200

1143:                                             ; preds = %1142, %1143
  %1144 = phi i32 [ %1153, %1143 ], [ %1036, %1142 ]
  %1145 = phi i32 [ %1155, %1143 ], [ %1037, %1142 ]
  %1146 = phi i64 [ %1156, %1143 ], [ 0, %1142 ]
  %1147 = add i32 %1145, %669
  %1148 = icmp slt i32 %170, %1147
  %1149 = zext i32 %1144 to i64
  %1150 = add nsw i64 %174, %1149
  %1151 = zext i1 %1148 to i64
  %1152 = add i64 %1150, %1151
  %1153 = trunc i64 %1152 to i32
  %1154 = select i1 %1148, i32 %670, i32 0
  %1155 = sub i32 %1147, %1154
  %1156 = add nuw nsw i64 %1146, 1
  %1157 = mul nuw nsw i64 %1156, %1067
  %1158 = trunc i64 %1157 to i32
  %1159 = shl i32 %1158, 8
  %1160 = getelementptr inbounds i16, i16* %331, i32 %1159
  %1161 = mul nsw i32 %1155, %39
  %1162 = zext i32 %1161 to i64
  %1163 = sub i64 %1162, %244
  %1164 = trunc i64 %1163 to i16
  %1165 = mul nsw i32 %36, %1153
  %1166 = zext i32 %1165 to i64
  %1167 = sub i64 %1166, %913
  %1168 = trunc i64 %1167 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1160, i16* %286, i8 zeroext %1130, i8 zeroext %1131, i16 signext %1164, i16 signext %1168, i16 zeroext %1132, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %1134, i32 0)
  %1169 = icmp slt i64 %1156, %1038
  br i1 %1169, label %1143, label %1200

1170:                                             ; preds = %1141
  %1171 = add nsw i64 %1067, -1
  %1172 = icmp sgt i64 %1067, 1
  br i1 %1172, label %1173, label %1200

1173:                                             ; preds = %1170
  %1174 = trunc i64 %1070 to i32
  %1175 = trunc i64 %1074 to i32
  %1176 = trunc i64 %1073 to i32
  br label %1177

1177:                                             ; preds = %1173, %1177
  %1178 = phi i32 [ %1190, %1177 ], [ %1176, %1173 ]
  %1179 = phi i32 [ %1186, %1177 ], [ %1175, %1173 ]
  %1180 = phi i32 [ %1189, %1177 ], [ %1174, %1173 ]
  %1181 = phi i64 [ %1198, %1177 ], [ 0, %1173 ]
  %1182 = add nsw i32 %1179, 1
  %1183 = icmp eq i32 %1182, %27
  %1184 = zext i1 %1183 to i32
  %1185 = add nsw i32 %1178, %1184
  %1186 = select i1 %1183, i32 0, i32 %1182
  %1187 = icmp eq i32 %1185, %24
  %1188 = zext i1 %1187 to i32
  %1189 = add nsw i32 %1180, %1188
  %1190 = select i1 %1187, i32 0, i32 %1185
  %1191 = trunc i64 %1181 to i32
  %1192 = shl i32 %1191, 8
  %1193 = add i32 %1192, 256
  %1194 = getelementptr inbounds i16, i16* %331, i32 %1193
  %1195 = trunc i32 %1186 to i8
  %1196 = trunc i32 %1190 to i8
  %1197 = trunc i32 %1189 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1194, i16* %286, i8 zeroext %1195, i8 zeroext %1196, i16 signext %1034, i16 signext %1035, i16 zeroext %1197, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1134, i8 zeroext 1, i8 zeroext %1040, i32 0)
  %1198 = add nuw nsw i64 %1181, 1
  %1199 = icmp slt i64 %1198, %1171
  br i1 %1199, label %1177, label %1200

1200:                                             ; preds = %1143, %1177, %1142, %1170, %1129, %1126
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %1201 = icmp sle i64 %1059, %123
  %1202 = and i1 %914, %1201
  %1203 = and i1 %1041, %1066
  %1204 = and i1 %1202, %1203
  br i1 %1204, label %1205, label %1221

1205:                                             ; preds = %1200
  %1206 = icmp sgt i64 %94, %1062
  %1207 = shl nsw i64 %1062, 4
  %1208 = sub nsw i64 %249, %1207
  %1209 = sub nsw i64 %1207, %249
  %1210 = select i1 %1206, i64 %1208, i64 %1209
  %1211 = icmp sgt i64 %1210, 0
  br i1 %1211, label %1212, label %1221

1212:                                             ; preds = %1205
  %1213 = shl nsw i64 %1067, 4
  %1214 = icmp slt i64 %1213, %1210
  %1215 = select i1 %1214, i64 %1213, i64 %1210
  %1216 = trunc i64 %1215 to i16
  %1217 = icmp eq i64 %1060, 0
  %1218 = icmp eq i64 %1059, %1061
  %1219 = and i1 %1217, %1218
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %331, i16* %328, i16 zeroext %1043, i16 zeroext %1216, i16 zeroext %1045, i1 zeroext %1219)
  br i1 %1052, label %1221, label %1220

1220:                                             ; preds = %1212
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %1221

1221:                                             ; preds = %1212, %1200, %1220, %1205
  %1222 = icmp slt i64 %1058, %250
  %1223 = and i1 %671, %1222
  br i1 %1223, label %1224, label %1225

1224:                                             ; preds = %1221
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %1225

1225:                                             ; preds = %1224, %1221
  br i1 %1075, label %1227, label %1226

1226:                                             ; preds = %1225
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %1227

1227:                                             ; preds = %1225, %1226
  %1228 = or i64 %1059, 1
  %1229 = icmp slt i64 %1228, %245
  br i1 %1229, label %1230, label %1389

1230:                                             ; preds = %1227
  %1231 = sdiv i64 %1228, %126
  %1232 = mul nsw i64 %1231, %126
  %1233 = mul nsw i64 %1228, %122
  %1234 = sub nsw i64 %94, %1233
  %1235 = icmp sgt i64 %1234, %122
  %1236 = select i1 %1235, i64 %122, i64 %1234
  %1237 = icmp sgt i64 %1236, 0
  %1238 = select i1 %1237, i64 %1236, i64 0
  %1239 = freeze i64 %1233
  %1240 = freeze i64 %166
  %1241 = sdiv i64 %1239, %1240
  %1242 = mul i64 %1241, %1240
  %1243 = sub i64 %1239, %1242
  %1244 = sdiv i64 %1243, %93
  %1245 = srem i64 %1233, %93
  %1246 = and i1 %989, %1235
  br i1 %1246, label %1247, label %1270

1247:                                             ; preds = %1230
  br i1 %1032, label %1254, label %1248

1248:                                             ; preds = %1247
  %1249 = mul nsw i64 %1233, %358
  %1250 = add i64 %1029, %1249
  %1251 = trunc i64 %1250 to i32
  %1252 = shl i32 %1251, 8
  %1253 = getelementptr inbounds i16, i16* %284, i32 %1252
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %1253, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1294

1254:                                             ; preds = %1247
  br i1 %688, label %1294, label %1255

1255:                                             ; preds = %1254, %1255
  %1256 = phi i64 [ %1268, %1255 ], [ 0, %1254 ]
  %1257 = mul i64 %1033, %1256
  %1258 = add nsw i64 %1257, %248
  %1259 = trunc i64 %1258 to i32
  %1260 = getelementptr inbounds i16, i16* %332, i32 %1259
  %1261 = add i64 %1256, %1233
  %1262 = mul i64 %1261, %358
  %1263 = add i64 %1262, %987
  %1264 = shl i64 %1263, 8
  %1265 = add i64 %663, %1264
  %1266 = trunc i64 %1265 to i32
  %1267 = getelementptr inbounds i16, i16* %284, i32 %1266
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1260, i16* %1267, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1268 = add nuw nsw i64 %1256, 1
  %1269 = icmp slt i64 %1268, %122
  br i1 %1269, label %1255, label %1294

1270:                                             ; preds = %1230
  %1271 = and i1 %991, %1237
  br i1 %1271, label %1272, label %1294

1272:                                             ; preds = %1270
  br i1 %1028, label %1273, label %1280

1273:                                             ; preds = %1272
  %1274 = mul nsw i64 %1233, %358
  %1275 = add i64 %1029, %1274
  %1276 = trunc i64 %1275 to i32
  %1277 = shl i32 %1276, 8
  %1278 = getelementptr inbounds i16, i16* %284, i32 %1277
  %1279 = trunc i64 %1238 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %1278, i16 zeroext 0, i8 zeroext %1279, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1294

1280:                                             ; preds = %1272, %1280
  %1281 = phi i64 [ %1292, %1280 ], [ 0, %1272 ]
  %1282 = mul nsw i64 %1281, %990
  %1283 = trunc i64 %1282 to i32
  %1284 = shl i32 %1283, 8
  %1285 = getelementptr inbounds i16, i16* %332, i32 %1284
  %1286 = add i64 %1281, %1233
  %1287 = mul i64 %1286, %358
  %1288 = add i64 %1029, %1287
  %1289 = trunc i64 %1288 to i32
  %1290 = shl i32 %1289, 8
  %1291 = getelementptr inbounds i16, i16* %284, i32 %1290
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1285, i16* %1291, i16 zeroext 0, i8 zeroext %1030, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1292 = add nuw nsw i64 %1281, 1
  %1293 = icmp ult i64 %1292, %1238
  br i1 %1293, label %1280, label %1294

1294:                                             ; preds = %1280, %1255, %1254, %1270, %1273, %1248
  %1295 = and i1 %1005, %1237
  %1296 = and i1 %914, %1295
  br i1 %1296, label %1297, label %1368

1297:                                             ; preds = %1294
  %1298 = trunc i64 %1245 to i8
  %1299 = trunc i64 %1244 to i8
  %1300 = trunc i64 %1241 to i16
  %1301 = icmp slt i64 %1238, %1006
  %1302 = trunc i64 %1238 to i8
  %1303 = select i1 %1301, i8 %1302, i8 1
  %1304 = zext i1 %1301 to i8
  %1305 = select i1 %1301, i64 %1006, i64 %1238
  %1306 = trunc i64 %1305 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %286, i8 zeroext %1298, i8 zeroext %1299, i16 signext %1034, i16 signext %1035, i16 zeroext %1300, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1303, i8 zeroext %1304, i8 zeroext %1306, i32 0)
  %1307 = add nuw nsw i64 %1238, %1006
  %1308 = icmp eq i64 %1307, 2
  br i1 %1308, label %1368, label %1309

1309:                                             ; preds = %1297
  br i1 %1301, label %1338, label %1310

1310:                                             ; preds = %1309
  br i1 %1039, label %1311, label %1368

1311:                                             ; preds = %1310, %1311
  %1312 = phi i32 [ %1321, %1311 ], [ %1036, %1310 ]
  %1313 = phi i32 [ %1323, %1311 ], [ %1037, %1310 ]
  %1314 = phi i64 [ %1324, %1311 ], [ 0, %1310 ]
  %1315 = add i32 %1313, %669
  %1316 = icmp slt i32 %170, %1315
  %1317 = zext i32 %1312 to i64
  %1318 = add nsw i64 %174, %1317
  %1319 = zext i1 %1316 to i64
  %1320 = add i64 %1318, %1319
  %1321 = trunc i64 %1320 to i32
  %1322 = select i1 %1316, i32 %670, i32 0
  %1323 = sub i32 %1315, %1322
  %1324 = add nuw nsw i64 %1314, 1
  %1325 = mul nuw nsw i64 %1324, %1238
  %1326 = trunc i64 %1325 to i32
  %1327 = shl i32 %1326, 8
  %1328 = getelementptr inbounds i16, i16* %333, i32 %1327
  %1329 = mul nsw i32 %1323, %39
  %1330 = zext i32 %1329 to i64
  %1331 = sub i64 %1330, %244
  %1332 = trunc i64 %1331 to i16
  %1333 = mul nsw i32 %36, %1321
  %1334 = zext i32 %1333 to i64
  %1335 = sub i64 %1334, %913
  %1336 = trunc i64 %1335 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1328, i16* %286, i8 zeroext %1298, i8 zeroext %1299, i16 signext %1332, i16 signext %1336, i16 zeroext %1300, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %1302, i32 0)
  %1337 = icmp slt i64 %1324, %1038
  br i1 %1337, label %1311, label %1368

1338:                                             ; preds = %1309
  %1339 = add nsw i64 %1238, -1
  %1340 = icmp sgt i64 %1238, 1
  br i1 %1340, label %1341, label %1368

1341:                                             ; preds = %1338
  %1342 = trunc i64 %1241 to i32
  %1343 = trunc i64 %1245 to i32
  %1344 = trunc i64 %1244 to i32
  br label %1345

1345:                                             ; preds = %1341, %1345
  %1346 = phi i32 [ %1358, %1345 ], [ %1344, %1341 ]
  %1347 = phi i32 [ %1354, %1345 ], [ %1343, %1341 ]
  %1348 = phi i32 [ %1357, %1345 ], [ %1342, %1341 ]
  %1349 = phi i64 [ %1366, %1345 ], [ 0, %1341 ]
  %1350 = add nsw i32 %1347, 1
  %1351 = icmp eq i32 %1350, %27
  %1352 = zext i1 %1351 to i32
  %1353 = add nsw i32 %1346, %1352
  %1354 = select i1 %1351, i32 0, i32 %1350
  %1355 = icmp eq i32 %1353, %24
  %1356 = zext i1 %1355 to i32
  %1357 = add nsw i32 %1348, %1356
  %1358 = select i1 %1355, i32 0, i32 %1353
  %1359 = trunc i64 %1349 to i32
  %1360 = shl i32 %1359, 8
  %1361 = add i32 %1360, 256
  %1362 = getelementptr inbounds i16, i16* %333, i32 %1361
  %1363 = trunc i32 %1354 to i8
  %1364 = trunc i32 %1358 to i8
  %1365 = trunc i32 %1357 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1362, i16* %286, i8 zeroext %1363, i8 zeroext %1364, i16 signext %1034, i16 signext %1035, i16 zeroext %1365, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1302, i8 zeroext 1, i8 zeroext %1040, i32 0)
  %1366 = add nuw nsw i64 %1349, 1
  %1367 = icmp slt i64 %1366, %1339
  br i1 %1367, label %1345, label %1368

1368:                                             ; preds = %1311, %1345, %1310, %1338, %1297, %1294
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %1369 = icmp sle i64 %1228, %123
  %1370 = and i1 %914, %1369
  %1371 = and i1 %1041, %1237
  %1372 = and i1 %1370, %1371
  br i1 %1372, label %1373, label %1389

1373:                                             ; preds = %1368
  %1374 = icmp sgt i64 %94, %1233
  %1375 = shl nsw i64 %1233, 4
  %1376 = sub nsw i64 %249, %1375
  %1377 = sub nsw i64 %1375, %249
  %1378 = select i1 %1374, i64 %1376, i64 %1377
  %1379 = icmp sgt i64 %1378, 0
  br i1 %1379, label %1380, label %1389

1380:                                             ; preds = %1373
  %1381 = shl nsw i64 %1238, 4
  %1382 = icmp slt i64 %1381, %1378
  %1383 = select i1 %1382, i64 %1381, i64 %1378
  %1384 = trunc i64 %1383 to i16
  %1385 = icmp eq i64 %1231, 0
  %1386 = icmp eq i64 %1228, %1232
  %1387 = and i1 %1385, %1386
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %333, i16* %332, i16 zeroext %1043, i16 zeroext %1384, i16 zeroext %1045, i1 zeroext %1387)
  br i1 %1055, label %1389, label %1388

1388:                                             ; preds = %1380
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %1389

1389:                                             ; preds = %1380, %1368, %1373, %1388, %1227
  br i1 %1223, label %1390, label %1391

1390:                                             ; preds = %1389
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %1391

1391:                                             ; preds = %1390, %1389
  %1392 = add nuw nsw i64 %1058, 1
  %1393 = icmp slt i64 %1392, %247
  br i1 %1393, label %1057, label %1056

1394:                                             ; preds = %1056
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %1395

1395:                                             ; preds = %1056, %1394
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %672, label %1396, label %1440

1396:                                             ; preds = %1395
  %1397 = icmp sgt i64 %1001, 1048559
  %1398 = shl i64 %1001, 4
  %1399 = and i64 %1006, 72057594037927935
  %1400 = shl nuw nsw i64 %1399, 8
  %1401 = sub nsw i64 %1398, %1400
  %1402 = icmp slt i64 %1401, -15
  %1403 = trunc i64 %1006 to i16
  %1404 = sdiv i64 %1401, 256
  %1405 = trunc i64 %1404 to i16
  %1406 = shl nuw nsw i64 %1399, 4
  %1407 = sub nsw i64 %1001, %1406
  %1408 = trunc i64 %1407 to i16
  %1409 = sub nsw i64 %1398, %254
  %1410 = icmp slt i64 %1409, -15
  %1411 = sdiv i64 %1409, 256
  %1412 = trunc i64 %1411 to i16
  %1413 = sub nsw i64 %1001, %255
  %1414 = trunc i64 %1413 to i16
  %1415 = icmp sgt i64 %986, %188
  %1416 = icmp sgt i64 %993, %193
  %1417 = or i1 %1415, %1416
  %1418 = or i1 %915, %1417
  %1419 = icmp sgt i64 %1001, 65534
  %1420 = sub nsw i64 %120, %1021
  %1421 = sub nsw i64 %1001, %1021
  %1422 = shl nsw i64 %999, 8
  %1423 = trunc i64 %1021 to i16
  %1424 = trunc i64 %1421 to i16
  %1425 = trunc i64 %1420 to i16
  %1426 = icmp slt i64 %1001, 65535
  %1427 = and i1 %680, %1426
  %1428 = and i1 %681, %1427
  %1429 = sub nsw i64 %1001, %178
  %1430 = icmp slt i64 %1429, 0
  %1431 = trunc i64 %1429 to i16
  %1432 = or i1 %1397, %1402
  %1433 = or i1 %1397, %1410
  %1434 = or i1 %677, %1419
  %1435 = or i64 %1420, %1421
  %1436 = icmp slt i64 %1435, 0
  %1437 = or i1 %1436, %1434
  %1438 = xor i1 %1428, true
  %1439 = or i1 %1430, %1438
  br label %1443

1440:                                             ; preds = %1561, %1395
  %1441 = icmp slt i64 %981, %259
  %1442 = and i1 %685, %1441
  br i1 %1442, label %1564, label %1565

1443:                                             ; preds = %1396, %1561
  %1444 = phi i64 [ 0, %1396 ], [ %1562, %1561 ]
  %1445 = mul nsw i64 %1444, %673
  %1446 = sub nsw i64 %87, %1445
  %1447 = sub i64 %1446, %987
  %1448 = icmp sgt i64 %1447, %673
  %1449 = select i1 %1448, i64 %673, i64 %1447
  %1450 = icmp sgt i64 %1449, 0
  %1451 = select i1 %1450, i64 %1449, i64 0
  %1452 = icmp eq i64 %1444, 0
  br i1 %1452, label %1454, label %1453

1453:                                             ; preds = %1443
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %1454

1454:                                             ; preds = %1443, %1453
  br i1 %914, label %1455, label %1556

1455:                                             ; preds = %1454
  %1456 = and i1 %1003, %1448
  br i1 %1456, label %1457, label %1477

1457:                                             ; preds = %1455
  br i1 %1433, label %1463, label %1458

1458:                                             ; preds = %1457
  %1459 = mul nsw i64 %1445, %1001
  %1460 = trunc i64 %1459 to i32
  %1461 = shl i32 %1460, 4
  %1462 = getelementptr inbounds float, float* %325, i32 %1461
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %1462, i8 zeroext 0, i16 zeroext %676, i16 zeroext %675, i16 zeroext %1412, i16 zeroext %1414, i32 1)
  br label %1498

1463:                                             ; preds = %1457
  br i1 %674, label %1464, label %1498

1464:                                             ; preds = %1463
  %1465 = mul nsw i64 %1445, %1001
  %1466 = shl nsw i64 %1465, 4
  br label %1467

1467:                                             ; preds = %1464, %1467
  %1468 = phi i64 [ 0, %1464 ], [ %1475, %1467 ]
  %1469 = mul i64 %1398, %1468
  %1470 = trunc i64 %1469 to i32
  %1471 = getelementptr inbounds i16, i16* %336, i32 %1470
  %1472 = add nsw i64 %1469, %1466
  %1473 = trunc i64 %1472 to i32
  %1474 = getelementptr inbounds float, float* %325, i32 %1473
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %1471, float* %1474, i8 zeroext 0, i16 zeroext 1, i16 zeroext %675, i16 zeroext 0, i16 zeroext 0, i32 1)
  %1475 = add nuw nsw i64 %1468, 1
  %1476 = icmp slt i64 %1475, %673
  br i1 %1476, label %1467, label %1498

1477:                                             ; preds = %1455
  %1478 = and i1 %1005, %1450
  br i1 %1478, label %1479, label %1498

1479:                                             ; preds = %1477
  %1480 = mul nsw i64 %1445, %1001
  br i1 %1432, label %1486, label %1481

1481:                                             ; preds = %1479
  %1482 = trunc i64 %1480 to i32
  %1483 = shl i32 %1482, 4
  %1484 = getelementptr inbounds float, float* %325, i32 %1483
  %1485 = trunc i64 %1451 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %1484, i8 zeroext 0, i16 zeroext %1485, i16 zeroext %1403, i16 zeroext %1405, i16 zeroext %1408, i32 1)
  br label %1498

1486:                                             ; preds = %1479
  %1487 = shl nsw i64 %1480, 4
  br label %1488

1488:                                             ; preds = %1486, %1488
  %1489 = phi i64 [ 0, %1486 ], [ %1496, %1488 ]
  %1490 = mul i64 %1398, %1489
  %1491 = trunc i64 %1490 to i32
  %1492 = getelementptr inbounds i16, i16* %336, i32 %1491
  %1493 = add nsw i64 %1490, %1487
  %1494 = trunc i64 %1493 to i32
  %1495 = getelementptr inbounds float, float* %325, i32 %1494
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %1492, float* %1495, i8 zeroext 0, i16 zeroext 1, i16 zeroext %1403, i16 zeroext 0, i16 zeroext 0, i32 1)
  %1496 = add nuw nsw i64 %1489, 1
  %1497 = icmp ult i64 %1496, %1451
  br i1 %1497, label %1488, label %1498

1498:                                             ; preds = %1488, %1467, %1463, %1458, %1481, %1477
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %1418, label %1557, label %1499

1499:                                             ; preds = %1498
  %1500 = and i1 %1018, %1448
  br i1 %1500, label %1501, label %1529

1501:                                             ; preds = %1499
  br i1 %1439, label %1510, label %1502

1502:                                             ; preds = %1501
  %1503 = add i64 %1445, %987
  %1504 = add i64 %1503, %916
  %1505 = mul i64 %678, %1504
  %1506 = add nsw i64 %1505, %1422
  %1507 = trunc i64 %1506 to i32
  %1508 = getelementptr inbounds i16, i16* %2, i32 %1507
  %1509 = bitcast i16* %1508 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %1509, i8* %679, i8 zeroext 0, i16 zeroext %676, i16 zeroext %682, i16 zeroext %1431, i16 zeroext %683)
  br label %1557

1510:                                             ; preds = %1501
  br i1 %674, label %1511, label %1557

1511:                                             ; preds = %1510
  %1512 = add i64 %1445, %987
  %1513 = add i64 %1512, %916
  br label %1514

1514:                                             ; preds = %1511, %1514
  %1515 = phi i64 [ 0, %1511 ], [ %1527, %1514 ]
  %1516 = add i64 %1513, %1515
  %1517 = mul i64 %678, %1516
  %1518 = add i64 %1517, %1422
  %1519 = trunc i64 %1518 to i32
  %1520 = getelementptr inbounds i16, i16* %2, i32 %1519
  %1521 = bitcast i16* %1520 to i8*
  %1522 = mul nsw i64 %1515, %1001
  %1523 = trunc i64 %1522 to i32
  %1524 = shl i32 %1523, 4
  %1525 = getelementptr inbounds i16, i16* %336, i32 %1524
  %1526 = bitcast i16* %1525 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %1521, i8* %1526, i8 zeroext 0, i16 zeroext 1, i16 zeroext %682, i16 zeroext 0, i16 zeroext 0)
  %1527 = add nuw nsw i64 %1515, 1
  %1528 = icmp slt i64 %1527, %673
  br i1 %1528, label %1514, label %1557

1529:                                             ; preds = %1499
  %1530 = and i1 %1020, %1450
  br i1 %1530, label %1531, label %1557

1531:                                             ; preds = %1529
  %1532 = add i64 %1445, %987
  %1533 = add i64 %1532, %916
  br i1 %1437, label %1541, label %1534

1534:                                             ; preds = %1531
  %1535 = mul i64 %678, %1533
  %1536 = add nsw i64 %1535, %1422
  %1537 = trunc i64 %1536 to i32
  %1538 = getelementptr inbounds i16, i16* %2, i32 %1537
  %1539 = bitcast i16* %1538 to i8*
  %1540 = trunc i64 %1451 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %1539, i8* %679, i8 zeroext 0, i16 zeroext %1540, i16 zeroext %1423, i16 zeroext %1424, i16 zeroext %1425)
  br label %1557

1541:                                             ; preds = %1531, %1541
  %1542 = phi i64 [ %1554, %1541 ], [ 0, %1531 ]
  %1543 = add i64 %1533, %1542
  %1544 = mul i64 %678, %1543
  %1545 = add i64 %1544, %1422
  %1546 = trunc i64 %1545 to i32
  %1547 = getelementptr inbounds i16, i16* %2, i32 %1546
  %1548 = bitcast i16* %1547 to i8*
  %1549 = mul nsw i64 %1542, %1001
  %1550 = trunc i64 %1549 to i32
  %1551 = shl i32 %1550, 4
  %1552 = getelementptr inbounds i16, i16* %336, i32 %1551
  %1553 = bitcast i16* %1552 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %1548, i8* %1553, i8 zeroext 0, i16 zeroext 1, i16 zeroext %1423, i16 zeroext 0, i16 zeroext 0)
  %1554 = add nuw nsw i64 %1542, 1
  %1555 = icmp ult i64 %1554, %1451
  br i1 %1555, label %1541, label %1557

1556:                                             ; preds = %1454
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %1557

1557:                                             ; preds = %1541, %1514, %1510, %1498, %1556, %1502, %1534, %1529
  %1558 = icmp slt i64 %1444, %258
  %1559 = and i1 %684, %1558
  br i1 %1559, label %1560, label %1561

1560:                                             ; preds = %1557
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %1561

1561:                                             ; preds = %1560, %1557
  %1562 = add nuw nsw i64 %1444, 1
  %1563 = icmp slt i64 %1562, %257
  br i1 %1563, label %1443, label %1440

1564:                                             ; preds = %1440
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %1565

1565:                                             ; preds = %1564, %1440
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br i1 %1022, label %1567, label %1566

1566:                                             ; preds = %1565
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %1567

1567:                                             ; preds = %1565, %1566
  %1568 = or i64 %982, 1
  %1569 = icmp slt i64 %1568, %236
  br i1 %1569, label %1570, label %2144

1570:                                             ; preds = %1567
  %1571 = sdiv i64 %1568, %198
  %1572 = mul nsw i64 %1571, %198
  %1573 = sub nsw i64 %1568, %1572
  %1574 = add nsw i64 %1571, %351
  %1575 = mul nsw i64 %1574, %160
  %1576 = sub nsw i64 %87, %1575
  %1577 = icmp sgt i64 %1576, %160
  %1578 = select i1 %1577, i64 %160, i64 %1576
  %1579 = icmp sgt i64 %1578, 0
  %1580 = select i1 %1579, i64 %1578, i64 0
  %1581 = add nsw i64 %1573, %719
  %1582 = add nsw i64 %1581, 1
  %1583 = mul nsw i64 %1582, %177
  %1584 = icmp slt i64 %1583, %240
  %1585 = select i1 %1584, i64 %1583, i64 %240
  %1586 = shl nsw i64 %1585, 4
  %1587 = mul nsw i64 %1581, %177
  %1588 = shl nsw i64 %1587, 4
  %1589 = sub nsw i64 %1586, %1588
  %1590 = sub nsw i64 %240, %1587
  %1591 = icmp sgt i64 %1590, %177
  %1592 = select i1 %1591, i64 %177, i64 %1590
  %1593 = icmp sgt i64 %1592, 0
  %1594 = select i1 %1593, i64 %1592, i64 0
  %1595 = sub nsw i64 %1588, %905
  %1596 = freeze i64 %1595
  %1597 = freeze i64 %172
  %1598 = sdiv i64 %1596, %1597
  %1599 = mul i64 %1598, %1597
  %1600 = sub i64 %1596, %1599
  %1601 = sub nsw i64 %120, %1588
  %1602 = icmp slt i64 %178, %1601
  %1603 = select i1 %1602, i64 %178, i64 %1601
  %1604 = icmp sgt i64 %1603, 0
  %1605 = select i1 %1604, i64 %1603, i64 0
  br i1 %656, label %1606, label %1641

1606:                                             ; preds = %1570
  %1607 = mul nsw i64 %1600, %150
  %1608 = sub nsw i64 %1607, %244
  %1609 = mul nsw i64 %1598, %301
  %1610 = sub nsw i64 %1609, %913
  %1611 = icmp slt i64 %1580, 2
  %1612 = icmp slt i64 %1578, 2
  %1613 = and i1 %1612, %1611
  %1614 = mul i64 %1571, %160
  %1615 = trunc i64 %1580 to i8
  %1616 = icmp sgt i64 %1578, 1
  %1617 = or i1 %658, %1616
  %1618 = shl i64 %1578, 8
  %1619 = trunc i64 %1608 to i16
  %1620 = trunc i64 %1610 to i16
  %1621 = trunc i64 %1598 to i32
  %1622 = trunc i64 %1600 to i32
  %1623 = add nsw i64 %1594, -1
  %1624 = icmp sgt i64 %1594, 1
  %1625 = trunc i64 %1594 to i8
  %1626 = and i1 %1579, %1593
  %1627 = trunc i64 %1594 to i16
  %1628 = shl i16 %1627, 4
  %1629 = trunc i64 %1580 to i16
  %1630 = shl i16 %1629, 4
  %1631 = icmp sgt i64 %1594, 4
  %1632 = icmp sgt i64 %1580, 1
  %1633 = icmp sgt i64 %1594, 2
  %1634 = icmp sgt i64 %1580, 2
  %1635 = and i1 %1632, %1631
  %1636 = and i1 %1634, %1633
  %1637 = or i1 %1635, %1636
  %1638 = and i1 %1632, %1631
  %1639 = and i1 %1634, %1633
  %1640 = or i1 %1638, %1639
  br label %1686

1641:                                             ; preds = %2020, %1570
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %672, label %1642, label %2144

1642:                                             ; preds = %1641
  %1643 = icmp sgt i64 %1589, 1048559
  %1644 = shl i64 %1589, 4
  %1645 = and i64 %1594, 72057594037927935
  %1646 = shl nuw nsw i64 %1645, 8
  %1647 = sub nsw i64 %1644, %1646
  %1648 = icmp slt i64 %1647, -15
  %1649 = trunc i64 %1594 to i16
  %1650 = sdiv i64 %1647, 256
  %1651 = trunc i64 %1650 to i16
  %1652 = shl nuw nsw i64 %1645, 4
  %1653 = sub nsw i64 %1589, %1652
  %1654 = trunc i64 %1653 to i16
  %1655 = sub nsw i64 %1644, %254
  %1656 = icmp slt i64 %1655, -15
  %1657 = sdiv i64 %1655, 256
  %1658 = trunc i64 %1657 to i16
  %1659 = sub nsw i64 %1589, %255
  %1660 = trunc i64 %1659 to i16
  %1661 = icmp sgt i64 %1574, %188
  %1662 = icmp sgt i64 %1581, %193
  %1663 = or i1 %1661, %1662
  %1664 = or i1 %915, %1663
  %1665 = icmp sgt i64 %1589, 65534
  %1666 = sub nsw i64 %120, %1605
  %1667 = sub nsw i64 %1589, %1605
  %1668 = shl nsw i64 %1587, 8
  %1669 = trunc i64 %1605 to i16
  %1670 = trunc i64 %1667 to i16
  %1671 = trunc i64 %1666 to i16
  %1672 = icmp slt i64 %1589, 65535
  %1673 = and i1 %680, %1672
  %1674 = and i1 %681, %1673
  %1675 = sub nsw i64 %1589, %178
  %1676 = icmp slt i64 %1675, 0
  %1677 = trunc i64 %1675 to i16
  %1678 = or i1 %1643, %1648
  %1679 = or i1 %1643, %1656
  %1680 = or i1 %677, %1665
  %1681 = or i64 %1666, %1667
  %1682 = icmp slt i64 %1681, 0
  %1683 = or i1 %1682, %1680
  %1684 = xor i1 %1674, true
  %1685 = or i1 %1676, %1684
  br label %2023

1686:                                             ; preds = %1606, %2020
  %1687 = phi i64 [ 0, %1606 ], [ %2021, %2020 ]
  %1688 = shl nuw nsw i64 %1687, 1
  %1689 = sdiv i64 %1688, %126
  %1690 = mul nsw i64 %1689, %126
  %1691 = mul nsw i64 %1688, %122
  %1692 = sub nsw i64 %94, %1691
  %1693 = icmp sgt i64 %1692, %122
  %1694 = select i1 %1693, i64 %122, i64 %1692
  %1695 = icmp sgt i64 %1694, 0
  %1696 = select i1 %1695, i64 %1694, i64 0
  %1697 = freeze i64 %1691
  %1698 = freeze i64 %166
  %1699 = sdiv i64 %1697, %1698
  %1700 = mul i64 %1699, %1698
  %1701 = sub i64 %1697, %1700
  %1702 = sdiv i64 %1701, %93
  %1703 = srem i64 %1691, %93
  %1704 = icmp eq i64 %1687, 0
  br i1 %1704, label %1706, label %1705

1705:                                             ; preds = %1686
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %1706

1706:                                             ; preds = %1686, %1705
  %1707 = and i1 %1577, %1693
  br i1 %1707, label %1708, label %1731

1708:                                             ; preds = %1706
  br i1 %1617, label %1715, label %1709

1709:                                             ; preds = %1708
  %1710 = mul nsw i64 %1691, %358
  %1711 = add i64 %1614, %1710
  %1712 = trunc i64 %1711 to i32
  %1713 = shl i32 %1712, 8
  %1714 = getelementptr inbounds i16, i16* %284, i32 %1713
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %1714, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1755

1715:                                             ; preds = %1708
  br i1 %689, label %1755, label %1716

1716:                                             ; preds = %1715, %1716
  %1717 = phi i64 [ %1729, %1716 ], [ 0, %1715 ]
  %1718 = mul i64 %1618, %1717
  %1719 = add nsw i64 %1718, %248
  %1720 = trunc i64 %1719 to i32
  %1721 = getelementptr inbounds i16, i16* %328, i32 %1720
  %1722 = add i64 %1717, %1691
  %1723 = mul i64 %1722, %358
  %1724 = add i64 %1723, %1575
  %1725 = shl i64 %1724, 8
  %1726 = add i64 %663, %1725
  %1727 = trunc i64 %1726 to i32
  %1728 = getelementptr inbounds i16, i16* %284, i32 %1727
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1721, i16* %1728, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1729 = add nuw nsw i64 %1717, 1
  %1730 = icmp slt i64 %1729, %122
  br i1 %1730, label %1716, label %1755

1731:                                             ; preds = %1706
  %1732 = and i1 %1579, %1695
  br i1 %1732, label %1733, label %1755

1733:                                             ; preds = %1731
  br i1 %1613, label %1734, label %1741

1734:                                             ; preds = %1733
  %1735 = mul nsw i64 %1691, %358
  %1736 = add i64 %1614, %1735
  %1737 = trunc i64 %1736 to i32
  %1738 = shl i32 %1737, 8
  %1739 = getelementptr inbounds i16, i16* %284, i32 %1738
  %1740 = trunc i64 %1696 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %1739, i16 zeroext 0, i8 zeroext %1740, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1755

1741:                                             ; preds = %1733, %1741
  %1742 = phi i64 [ %1753, %1741 ], [ 0, %1733 ]
  %1743 = mul nsw i64 %1742, %1578
  %1744 = trunc i64 %1743 to i32
  %1745 = shl i32 %1744, 8
  %1746 = getelementptr inbounds i16, i16* %328, i32 %1745
  %1747 = add i64 %1742, %1691
  %1748 = mul i64 %1747, %358
  %1749 = add i64 %1614, %1748
  %1750 = trunc i64 %1749 to i32
  %1751 = shl i32 %1750, 8
  %1752 = getelementptr inbounds i16, i16* %284, i32 %1751
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1746, i16* %1752, i16 zeroext 0, i8 zeroext %1615, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1753 = add nuw nsw i64 %1742, 1
  %1754 = icmp ult i64 %1753, %1696
  br i1 %1754, label %1741, label %1755

1755:                                             ; preds = %1741, %1716, %1715, %1731, %1734, %1709
  %1756 = and i1 %1593, %1695
  %1757 = and i1 %914, %1756
  br i1 %1757, label %1758, label %1829

1758:                                             ; preds = %1755
  %1759 = trunc i64 %1703 to i8
  %1760 = trunc i64 %1702 to i8
  %1761 = trunc i64 %1699 to i16
  %1762 = icmp slt i64 %1696, %1594
  %1763 = trunc i64 %1696 to i8
  %1764 = select i1 %1762, i8 %1763, i8 1
  %1765 = zext i1 %1762 to i8
  %1766 = select i1 %1762, i64 %1594, i64 %1696
  %1767 = trunc i64 %1766 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %286, i8 zeroext %1759, i8 zeroext %1760, i16 signext %1619, i16 signext %1620, i16 zeroext %1761, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1764, i8 zeroext %1765, i8 zeroext %1767, i32 0)
  %1768 = add nuw nsw i64 %1696, %1594
  %1769 = icmp eq i64 %1768, 2
  br i1 %1769, label %1829, label %1770

1770:                                             ; preds = %1758
  br i1 %1762, label %1799, label %1771

1771:                                             ; preds = %1770
  br i1 %1624, label %1772, label %1829

1772:                                             ; preds = %1771, %1772
  %1773 = phi i32 [ %1782, %1772 ], [ %1621, %1771 ]
  %1774 = phi i32 [ %1784, %1772 ], [ %1622, %1771 ]
  %1775 = phi i64 [ %1785, %1772 ], [ 0, %1771 ]
  %1776 = add i32 %1774, %669
  %1777 = icmp slt i32 %170, %1776
  %1778 = zext i32 %1773 to i64
  %1779 = add nsw i64 %174, %1778
  %1780 = zext i1 %1777 to i64
  %1781 = add i64 %1779, %1780
  %1782 = trunc i64 %1781 to i32
  %1783 = select i1 %1777, i32 %670, i32 0
  %1784 = sub i32 %1776, %1783
  %1785 = add nuw nsw i64 %1775, 1
  %1786 = mul nuw nsw i64 %1785, %1696
  %1787 = trunc i64 %1786 to i32
  %1788 = shl i32 %1787, 8
  %1789 = getelementptr inbounds i16, i16* %331, i32 %1788
  %1790 = mul nsw i32 %1784, %39
  %1791 = zext i32 %1790 to i64
  %1792 = sub i64 %1791, %244
  %1793 = trunc i64 %1792 to i16
  %1794 = mul nsw i32 %36, %1782
  %1795 = zext i32 %1794 to i64
  %1796 = sub i64 %1795, %913
  %1797 = trunc i64 %1796 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1789, i16* %286, i8 zeroext %1759, i8 zeroext %1760, i16 signext %1793, i16 signext %1797, i16 zeroext %1761, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %1763, i32 0)
  %1798 = icmp slt i64 %1785, %1623
  br i1 %1798, label %1772, label %1829

1799:                                             ; preds = %1770
  %1800 = add nsw i64 %1696, -1
  %1801 = icmp sgt i64 %1696, 1
  br i1 %1801, label %1802, label %1829

1802:                                             ; preds = %1799
  %1803 = trunc i64 %1699 to i32
  %1804 = trunc i64 %1703 to i32
  %1805 = trunc i64 %1702 to i32
  br label %1806

1806:                                             ; preds = %1802, %1806
  %1807 = phi i32 [ %1819, %1806 ], [ %1805, %1802 ]
  %1808 = phi i32 [ %1815, %1806 ], [ %1804, %1802 ]
  %1809 = phi i32 [ %1818, %1806 ], [ %1803, %1802 ]
  %1810 = phi i64 [ %1827, %1806 ], [ 0, %1802 ]
  %1811 = add nsw i32 %1808, 1
  %1812 = icmp eq i32 %1811, %27
  %1813 = zext i1 %1812 to i32
  %1814 = add nsw i32 %1807, %1813
  %1815 = select i1 %1812, i32 0, i32 %1811
  %1816 = icmp eq i32 %1814, %24
  %1817 = zext i1 %1816 to i32
  %1818 = add nsw i32 %1809, %1817
  %1819 = select i1 %1816, i32 0, i32 %1814
  %1820 = trunc i64 %1810 to i32
  %1821 = shl i32 %1820, 8
  %1822 = add i32 %1821, 256
  %1823 = getelementptr inbounds i16, i16* %331, i32 %1822
  %1824 = trunc i32 %1815 to i8
  %1825 = trunc i32 %1819 to i8
  %1826 = trunc i32 %1818 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1823, i16* %286, i8 zeroext %1824, i8 zeroext %1825, i16 signext %1619, i16 signext %1620, i16 zeroext %1826, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1763, i8 zeroext 1, i8 zeroext %1625, i32 0)
  %1827 = add nuw nsw i64 %1810, 1
  %1828 = icmp slt i64 %1827, %1800
  br i1 %1828, label %1806, label %1829

1829:                                             ; preds = %1772, %1806, %1771, %1799, %1758, %1755
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %1830 = icmp sle i64 %1688, %123
  %1831 = and i1 %914, %1830
  %1832 = and i1 %1626, %1695
  %1833 = and i1 %1831, %1832
  br i1 %1833, label %1834, label %1850

1834:                                             ; preds = %1829
  %1835 = icmp sgt i64 %94, %1691
  %1836 = shl nsw i64 %1691, 4
  %1837 = sub nsw i64 %249, %1836
  %1838 = sub nsw i64 %1836, %249
  %1839 = select i1 %1835, i64 %1837, i64 %1838
  %1840 = icmp sgt i64 %1839, 0
  br i1 %1840, label %1841, label %1850

1841:                                             ; preds = %1834
  %1842 = shl nsw i64 %1696, 4
  %1843 = icmp slt i64 %1842, %1839
  %1844 = select i1 %1843, i64 %1842, i64 %1839
  %1845 = trunc i64 %1844 to i16
  %1846 = icmp eq i64 %1689, 0
  %1847 = icmp eq i64 %1688, %1690
  %1848 = and i1 %1846, %1847
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %331, i16* %328, i16 zeroext %1628, i16 zeroext %1845, i16 zeroext %1630, i1 zeroext %1848)
  br i1 %1637, label %1850, label %1849

1849:                                             ; preds = %1841
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %1850

1850:                                             ; preds = %1841, %1829, %1849, %1834
  %1851 = icmp slt i64 %1687, %250
  %1852 = and i1 %671, %1851
  br i1 %1852, label %1853, label %1854

1853:                                             ; preds = %1850
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %1854

1854:                                             ; preds = %1853, %1850
  br i1 %1704, label %1856, label %1855

1855:                                             ; preds = %1854
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %1856

1856:                                             ; preds = %1854, %1855
  %1857 = or i64 %1688, 1
  %1858 = icmp slt i64 %1857, %245
  br i1 %1858, label %1859, label %2018

1859:                                             ; preds = %1856
  %1860 = sdiv i64 %1857, %126
  %1861 = mul nsw i64 %1860, %126
  %1862 = mul nsw i64 %1857, %122
  %1863 = sub nsw i64 %94, %1862
  %1864 = icmp sgt i64 %1863, %122
  %1865 = select i1 %1864, i64 %122, i64 %1863
  %1866 = icmp sgt i64 %1865, 0
  %1867 = select i1 %1866, i64 %1865, i64 0
  %1868 = freeze i64 %1862
  %1869 = freeze i64 %166
  %1870 = sdiv i64 %1868, %1869
  %1871 = mul i64 %1870, %1869
  %1872 = sub i64 %1868, %1871
  %1873 = sdiv i64 %1872, %93
  %1874 = srem i64 %1862, %93
  %1875 = and i1 %1577, %1864
  br i1 %1875, label %1876, label %1899

1876:                                             ; preds = %1859
  br i1 %1617, label %1883, label %1877

1877:                                             ; preds = %1876
  %1878 = mul nsw i64 %1862, %358
  %1879 = add i64 %1614, %1878
  %1880 = trunc i64 %1879 to i32
  %1881 = shl i32 %1880, 8
  %1882 = getelementptr inbounds i16, i16* %284, i32 %1881
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %1882, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1923

1883:                                             ; preds = %1876
  br i1 %690, label %1923, label %1884

1884:                                             ; preds = %1883, %1884
  %1885 = phi i64 [ %1897, %1884 ], [ 0, %1883 ]
  %1886 = mul i64 %1618, %1885
  %1887 = add nsw i64 %1886, %248
  %1888 = trunc i64 %1887 to i32
  %1889 = getelementptr inbounds i16, i16* %332, i32 %1888
  %1890 = add i64 %1885, %1862
  %1891 = mul i64 %1890, %358
  %1892 = add i64 %1891, %1575
  %1893 = shl i64 %1892, 8
  %1894 = add i64 %663, %1893
  %1895 = trunc i64 %1894 to i32
  %1896 = getelementptr inbounds i16, i16* %284, i32 %1895
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1889, i16* %1896, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1897 = add nuw nsw i64 %1885, 1
  %1898 = icmp slt i64 %1897, %122
  br i1 %1898, label %1884, label %1923

1899:                                             ; preds = %1859
  %1900 = and i1 %1579, %1866
  br i1 %1900, label %1901, label %1923

1901:                                             ; preds = %1899
  br i1 %1613, label %1902, label %1909

1902:                                             ; preds = %1901
  %1903 = mul nsw i64 %1862, %358
  %1904 = add i64 %1614, %1903
  %1905 = trunc i64 %1904 to i32
  %1906 = shl i32 %1905, 8
  %1907 = getelementptr inbounds i16, i16* %284, i32 %1906
  %1908 = trunc i64 %1867 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %1907, i16 zeroext 0, i8 zeroext %1908, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %1923

1909:                                             ; preds = %1901, %1909
  %1910 = phi i64 [ %1921, %1909 ], [ 0, %1901 ]
  %1911 = mul nsw i64 %1910, %1578
  %1912 = trunc i64 %1911 to i32
  %1913 = shl i32 %1912, 8
  %1914 = getelementptr inbounds i16, i16* %332, i32 %1913
  %1915 = add i64 %1910, %1862
  %1916 = mul i64 %1915, %358
  %1917 = add i64 %1614, %1916
  %1918 = trunc i64 %1917 to i32
  %1919 = shl i32 %1918, 8
  %1920 = getelementptr inbounds i16, i16* %284, i32 %1919
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %1914, i16* %1920, i16 zeroext 0, i8 zeroext %1615, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %1921 = add nuw nsw i64 %1910, 1
  %1922 = icmp ult i64 %1921, %1867
  br i1 %1922, label %1909, label %1923

1923:                                             ; preds = %1909, %1884, %1883, %1899, %1902, %1877
  %1924 = and i1 %1593, %1866
  %1925 = and i1 %914, %1924
  br i1 %1925, label %1926, label %1997

1926:                                             ; preds = %1923
  %1927 = trunc i64 %1874 to i8
  %1928 = trunc i64 %1873 to i8
  %1929 = trunc i64 %1870 to i16
  %1930 = icmp slt i64 %1867, %1594
  %1931 = trunc i64 %1867 to i8
  %1932 = select i1 %1930, i8 %1931, i8 1
  %1933 = zext i1 %1930 to i8
  %1934 = select i1 %1930, i64 %1594, i64 %1867
  %1935 = trunc i64 %1934 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %286, i8 zeroext %1927, i8 zeroext %1928, i16 signext %1619, i16 signext %1620, i16 zeroext %1929, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1932, i8 zeroext %1933, i8 zeroext %1935, i32 0)
  %1936 = add nuw nsw i64 %1867, %1594
  %1937 = icmp eq i64 %1936, 2
  br i1 %1937, label %1997, label %1938

1938:                                             ; preds = %1926
  br i1 %1930, label %1967, label %1939

1939:                                             ; preds = %1938
  br i1 %1624, label %1940, label %1997

1940:                                             ; preds = %1939, %1940
  %1941 = phi i32 [ %1950, %1940 ], [ %1621, %1939 ]
  %1942 = phi i32 [ %1952, %1940 ], [ %1622, %1939 ]
  %1943 = phi i64 [ %1953, %1940 ], [ 0, %1939 ]
  %1944 = add i32 %1942, %669
  %1945 = icmp slt i32 %170, %1944
  %1946 = zext i32 %1941 to i64
  %1947 = add nsw i64 %174, %1946
  %1948 = zext i1 %1945 to i64
  %1949 = add i64 %1947, %1948
  %1950 = trunc i64 %1949 to i32
  %1951 = select i1 %1945, i32 %670, i32 0
  %1952 = sub i32 %1944, %1951
  %1953 = add nuw nsw i64 %1943, 1
  %1954 = mul nuw nsw i64 %1953, %1867
  %1955 = trunc i64 %1954 to i32
  %1956 = shl i32 %1955, 8
  %1957 = getelementptr inbounds i16, i16* %333, i32 %1956
  %1958 = mul nsw i32 %1952, %39
  %1959 = zext i32 %1958 to i64
  %1960 = sub i64 %1959, %244
  %1961 = trunc i64 %1960 to i16
  %1962 = mul nsw i32 %36, %1950
  %1963 = zext i32 %1962 to i64
  %1964 = sub i64 %1963, %913
  %1965 = trunc i64 %1964 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1957, i16* %286, i8 zeroext %1927, i8 zeroext %1928, i16 signext %1961, i16 signext %1965, i16 zeroext %1929, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %1931, i32 0)
  %1966 = icmp slt i64 %1953, %1623
  br i1 %1966, label %1940, label %1997

1967:                                             ; preds = %1938
  %1968 = add nsw i64 %1867, -1
  %1969 = icmp sgt i64 %1867, 1
  br i1 %1969, label %1970, label %1997

1970:                                             ; preds = %1967
  %1971 = trunc i64 %1870 to i32
  %1972 = trunc i64 %1874 to i32
  %1973 = trunc i64 %1873 to i32
  br label %1974

1974:                                             ; preds = %1970, %1974
  %1975 = phi i32 [ %1987, %1974 ], [ %1973, %1970 ]
  %1976 = phi i32 [ %1983, %1974 ], [ %1972, %1970 ]
  %1977 = phi i32 [ %1986, %1974 ], [ %1971, %1970 ]
  %1978 = phi i64 [ %1995, %1974 ], [ 0, %1970 ]
  %1979 = add nsw i32 %1976, 1
  %1980 = icmp eq i32 %1979, %27
  %1981 = zext i1 %1980 to i32
  %1982 = add nsw i32 %1975, %1981
  %1983 = select i1 %1980, i32 0, i32 %1979
  %1984 = icmp eq i32 %1982, %24
  %1985 = zext i1 %1984 to i32
  %1986 = add nsw i32 %1977, %1985
  %1987 = select i1 %1984, i32 0, i32 %1982
  %1988 = trunc i64 %1978 to i32
  %1989 = shl i32 %1988, 8
  %1990 = add i32 %1989, 256
  %1991 = getelementptr inbounds i16, i16* %333, i32 %1990
  %1992 = trunc i32 %1983 to i8
  %1993 = trunc i32 %1987 to i8
  %1994 = trunc i32 %1986 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %1991, i16* %286, i8 zeroext %1992, i8 zeroext %1993, i16 signext %1619, i16 signext %1620, i16 zeroext %1994, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %1931, i8 zeroext 1, i8 zeroext %1625, i32 0)
  %1995 = add nuw nsw i64 %1978, 1
  %1996 = icmp slt i64 %1995, %1968
  br i1 %1996, label %1974, label %1997

1997:                                             ; preds = %1940, %1974, %1939, %1967, %1926, %1923
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %1998 = icmp sle i64 %1857, %123
  %1999 = and i1 %914, %1998
  %2000 = and i1 %1626, %1866
  %2001 = and i1 %1999, %2000
  br i1 %2001, label %2002, label %2018

2002:                                             ; preds = %1997
  %2003 = icmp sgt i64 %94, %1862
  %2004 = shl nsw i64 %1862, 4
  %2005 = sub nsw i64 %249, %2004
  %2006 = sub nsw i64 %2004, %249
  %2007 = select i1 %2003, i64 %2005, i64 %2006
  %2008 = icmp sgt i64 %2007, 0
  br i1 %2008, label %2009, label %2018

2009:                                             ; preds = %2002
  %2010 = shl nsw i64 %1867, 4
  %2011 = icmp slt i64 %2010, %2007
  %2012 = select i1 %2011, i64 %2010, i64 %2007
  %2013 = trunc i64 %2012 to i16
  %2014 = icmp eq i64 %1860, 0
  %2015 = icmp eq i64 %1857, %1861
  %2016 = and i1 %2014, %2015
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %333, i16* %332, i16 zeroext %1628, i16 zeroext %2013, i16 zeroext %1630, i1 zeroext %2016)
  br i1 %1640, label %2018, label %2017

2017:                                             ; preds = %2009
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %2018

2018:                                             ; preds = %2009, %1997, %2002, %2017, %1856
  br i1 %1852, label %2019, label %2020

2019:                                             ; preds = %2018
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %2020

2020:                                             ; preds = %2019, %2018
  %2021 = add nuw nsw i64 %1687, 1
  %2022 = icmp slt i64 %2021, %247
  br i1 %2022, label %1686, label %1641

2023:                                             ; preds = %1642, %2141
  %2024 = phi i64 [ 0, %1642 ], [ %2142, %2141 ]
  %2025 = mul nsw i64 %2024, %673
  %2026 = sub nsw i64 %87, %2025
  %2027 = sub i64 %2026, %1575
  %2028 = icmp sgt i64 %2027, %673
  %2029 = select i1 %2028, i64 %673, i64 %2027
  %2030 = icmp sgt i64 %2029, 0
  %2031 = select i1 %2030, i64 %2029, i64 0
  %2032 = icmp eq i64 %2024, 0
  br i1 %2032, label %2034, label %2033

2033:                                             ; preds = %2023
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %2034

2034:                                             ; preds = %2023, %2033
  br i1 %914, label %2035, label %2136

2035:                                             ; preds = %2034
  %2036 = and i1 %1591, %2028
  br i1 %2036, label %2037, label %2057

2037:                                             ; preds = %2035
  br i1 %1679, label %2043, label %2038

2038:                                             ; preds = %2037
  %2039 = mul nsw i64 %2025, %1589
  %2040 = trunc i64 %2039 to i32
  %2041 = shl i32 %2040, 4
  %2042 = getelementptr inbounds float, float* %337, i32 %2041
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %2042, i8 zeroext 0, i16 zeroext %676, i16 zeroext %675, i16 zeroext %1658, i16 zeroext %1660, i32 1)
  br label %2078

2043:                                             ; preds = %2037
  br i1 %674, label %2044, label %2078

2044:                                             ; preds = %2043
  %2045 = mul nsw i64 %2025, %1589
  %2046 = shl nsw i64 %2045, 4
  br label %2047

2047:                                             ; preds = %2044, %2047
  %2048 = phi i64 [ 0, %2044 ], [ %2055, %2047 ]
  %2049 = mul i64 %1644, %2048
  %2050 = trunc i64 %2049 to i32
  %2051 = getelementptr inbounds i16, i16* %336, i32 %2050
  %2052 = add nsw i64 %2049, %2046
  %2053 = trunc i64 %2052 to i32
  %2054 = getelementptr inbounds float, float* %337, i32 %2053
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %2051, float* %2054, i8 zeroext 0, i16 zeroext 1, i16 zeroext %675, i16 zeroext 0, i16 zeroext 0, i32 1)
  %2055 = add nuw nsw i64 %2048, 1
  %2056 = icmp slt i64 %2055, %673
  br i1 %2056, label %2047, label %2078

2057:                                             ; preds = %2035
  %2058 = and i1 %1593, %2030
  br i1 %2058, label %2059, label %2078

2059:                                             ; preds = %2057
  %2060 = mul nsw i64 %2025, %1589
  br i1 %1678, label %2066, label %2061

2061:                                             ; preds = %2059
  %2062 = trunc i64 %2060 to i32
  %2063 = shl i32 %2062, 4
  %2064 = getelementptr inbounds float, float* %337, i32 %2063
  %2065 = trunc i64 %2031 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %2064, i8 zeroext 0, i16 zeroext %2065, i16 zeroext %1649, i16 zeroext %1651, i16 zeroext %1654, i32 1)
  br label %2078

2066:                                             ; preds = %2059
  %2067 = shl nsw i64 %2060, 4
  br label %2068

2068:                                             ; preds = %2066, %2068
  %2069 = phi i64 [ 0, %2066 ], [ %2076, %2068 ]
  %2070 = mul i64 %1644, %2069
  %2071 = trunc i64 %2070 to i32
  %2072 = getelementptr inbounds i16, i16* %336, i32 %2071
  %2073 = add nsw i64 %2070, %2067
  %2074 = trunc i64 %2073 to i32
  %2075 = getelementptr inbounds float, float* %337, i32 %2074
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %2072, float* %2075, i8 zeroext 0, i16 zeroext 1, i16 zeroext %1649, i16 zeroext 0, i16 zeroext 0, i32 1)
  %2076 = add nuw nsw i64 %2069, 1
  %2077 = icmp ult i64 %2076, %2031
  br i1 %2077, label %2068, label %2078

2078:                                             ; preds = %2068, %2047, %2043, %2038, %2061, %2057
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %1664, label %2137, label %2079

2079:                                             ; preds = %2078
  %2080 = and i1 %1602, %2028
  br i1 %2080, label %2081, label %2109

2081:                                             ; preds = %2079
  br i1 %1685, label %2090, label %2082

2082:                                             ; preds = %2081
  %2083 = add i64 %2025, %1575
  %2084 = add i64 %2083, %916
  %2085 = mul i64 %678, %2084
  %2086 = add nsw i64 %2085, %1668
  %2087 = trunc i64 %2086 to i32
  %2088 = getelementptr inbounds i16, i16* %2, i32 %2087
  %2089 = bitcast i16* %2088 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2089, i8* %679, i8 zeroext 0, i16 zeroext %676, i16 zeroext %682, i16 zeroext %1677, i16 zeroext %683)
  br label %2137

2090:                                             ; preds = %2081
  br i1 %674, label %2091, label %2137

2091:                                             ; preds = %2090
  %2092 = add i64 %2025, %1575
  %2093 = add i64 %2092, %916
  br label %2094

2094:                                             ; preds = %2091, %2094
  %2095 = phi i64 [ 0, %2091 ], [ %2107, %2094 ]
  %2096 = add i64 %2093, %2095
  %2097 = mul i64 %678, %2096
  %2098 = add i64 %2097, %1668
  %2099 = trunc i64 %2098 to i32
  %2100 = getelementptr inbounds i16, i16* %2, i32 %2099
  %2101 = bitcast i16* %2100 to i8*
  %2102 = mul nsw i64 %2095, %1589
  %2103 = trunc i64 %2102 to i32
  %2104 = shl i32 %2103, 4
  %2105 = getelementptr inbounds i16, i16* %336, i32 %2104
  %2106 = bitcast i16* %2105 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2101, i8* %2106, i8 zeroext 0, i16 zeroext 1, i16 zeroext %682, i16 zeroext 0, i16 zeroext 0)
  %2107 = add nuw nsw i64 %2095, 1
  %2108 = icmp slt i64 %2107, %673
  br i1 %2108, label %2094, label %2137

2109:                                             ; preds = %2079
  %2110 = and i1 %1604, %2030
  br i1 %2110, label %2111, label %2137

2111:                                             ; preds = %2109
  %2112 = add i64 %2025, %1575
  %2113 = add i64 %2112, %916
  br i1 %1683, label %2121, label %2114

2114:                                             ; preds = %2111
  %2115 = mul i64 %678, %2113
  %2116 = add nsw i64 %2115, %1668
  %2117 = trunc i64 %2116 to i32
  %2118 = getelementptr inbounds i16, i16* %2, i32 %2117
  %2119 = bitcast i16* %2118 to i8*
  %2120 = trunc i64 %2031 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2119, i8* %679, i8 zeroext 0, i16 zeroext %2120, i16 zeroext %1669, i16 zeroext %1670, i16 zeroext %1671)
  br label %2137

2121:                                             ; preds = %2111, %2121
  %2122 = phi i64 [ %2134, %2121 ], [ 0, %2111 ]
  %2123 = add i64 %2113, %2122
  %2124 = mul i64 %678, %2123
  %2125 = add i64 %2124, %1668
  %2126 = trunc i64 %2125 to i32
  %2127 = getelementptr inbounds i16, i16* %2, i32 %2126
  %2128 = bitcast i16* %2127 to i8*
  %2129 = mul nsw i64 %2122, %1589
  %2130 = trunc i64 %2129 to i32
  %2131 = shl i32 %2130, 4
  %2132 = getelementptr inbounds i16, i16* %336, i32 %2131
  %2133 = bitcast i16* %2132 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2128, i8* %2133, i8 zeroext 0, i16 zeroext 1, i16 zeroext %1669, i16 zeroext 0, i16 zeroext 0)
  %2134 = add nuw nsw i64 %2122, 1
  %2135 = icmp ult i64 %2134, %2031
  br i1 %2135, label %2121, label %2137

2136:                                             ; preds = %2034
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %2137

2137:                                             ; preds = %2121, %2094, %2090, %2078, %2136, %2082, %2114, %2109
  %2138 = icmp slt i64 %2024, %258
  %2139 = and i1 %684, %2138
  br i1 %2139, label %2140, label %2141

2140:                                             ; preds = %2137
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %2141

2141:                                             ; preds = %2140, %2137
  %2142 = add nuw nsw i64 %2024, 1
  %2143 = icmp slt i64 %2142, %257
  br i1 %2143, label %2023, label %2144

2144:                                             ; preds = %2141, %1641, %1567
  br i1 %1442, label %2145, label %2146

2145:                                             ; preds = %2144
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %2146

2146:                                             ; preds = %2145, %2144
  %2147 = add nuw nsw i64 %981, 1
  %2148 = icmp slt i64 %2147, %238
  br i1 %2148, label %980, label %917

2149:                                             ; preds = %917
  %2150 = icmp sgt i64 %952, 0
  br i1 %2150, label %2151, label %2179

2151:                                             ; preds = %2149
  %2152 = shl i64 %952, 16
  %2153 = icmp slt i64 %949, 0
  %2154 = sub nsw i64 0, %949
  %2155 = sub nsw i64 %936, %948
  %2156 = icmp sgt i64 %2155, %2154
  %2157 = select i1 %2156, i64 %2154, i64 %2155
  %2158 = select i1 %2153, i64 %2157, i64 0
  %2159 = icmp slt i64 %2158, %477
  %2160 = select i1 %2159, i64 %2158, i64 %477
  %2161 = shl i64 %2160, 48
  %2162 = add i64 %112, %934
  %2163 = sub i64 %2162, %948
  %2164 = add i64 %2163, %949
  %2165 = icmp sgt i64 %2164, %304
  %2166 = sub nsw i64 %2164, %304
  %2167 = sub nsw i64 %935, %948
  %2168 = icmp slt i64 %2166, %2167
  %2169 = select i1 %2168, i64 %2166, i64 %2167
  %2170 = select i1 %2165, i64 %2169, i64 0
  %2171 = icmp slt i64 %2170, %647
  %2172 = select i1 %2171, i64 %2170, i64 %647
  %2173 = shl i64 %2172, 56
  %2174 = or i64 %649, %2152
  %2175 = or i64 %2174, %2161
  %2176 = or i64 %2175, %2173
  %2177 = icmp eq i64 %901, %2176
  br i1 %2177, label %2179, label %2178

2178:                                             ; preds = %2151
  tail call void @_Z11intrinsic_3y(i64 %2176)
  br label %2179

2179:                                             ; preds = %2178, %2151, %2149
  %2180 = phi i64 [ %901, %2149 ], [ %901, %2151 ], [ %2176, %2178 ]
  %2181 = icmp slt i64 %963, 4096
  %2182 = and i1 %650, %2181
  %2183 = icmp slt i64 %975, 1048560
  %2184 = and i1 %2182, %2183
  %2185 = icmp slt i64 %972, 1048560
  %2186 = and i1 %2185, %2184
  %2187 = icmp sgt i64 %963, 0
  %2188 = and i1 %2187, %2186
  br i1 %2188, label %2189, label %2221

2189:                                             ; preds = %2179
  %2190 = sub nsw i64 %972, %204
  %2191 = icmp sgt i64 %2190, -16
  br i1 %2191, label %2192, label %2221

2192:                                             ; preds = %2189
  %2193 = sub nsw i64 %975, %204
  %2194 = icmp sgt i64 %2193, -16
  br i1 %2194, label %2195, label %2221

2195:                                             ; preds = %2192
  %2196 = icmp sgt i64 %970, 0
  br i1 %2196, label %2197, label %2253

2197:                                             ; preds = %2195
  %2198 = mul i64 %651, %922
  %2199 = sub i64 %2198, %477
  %2200 = add i64 %2199, %948
  %2201 = mul i64 %208, %2200
  %2202 = sub i64 %2201, %229
  %2203 = trunc i64 %963 to i16
  %2204 = sdiv i64 %2193, 16
  %2205 = trunc i64 %2204 to i16
  %2206 = sdiv i64 %2190, 16
  %2207 = trunc i64 %2206 to i16
  br label %2208

2208:                                             ; preds = %2197, %2208
  %2209 = phi i64 [ 0, %2197 ], [ %2219, %2208 ]
  %2210 = mul nsw i64 %2209, %971
  %2211 = trunc i64 %2210 to i32
  %2212 = getelementptr inbounds i16, i16* %286, i32 %2211
  %2213 = bitcast i16* %2212 to i8*
  %2214 = mul nsw i64 %2209, %974
  %2215 = add i64 %2202, %2214
  %2216 = trunc i64 %2215 to i32
  %2217 = getelementptr inbounds i16, i16* %0, i32 %2216
  %2218 = bitcast i16* %2217 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %2213, i8* %2218, i8 zeroext 0, i16 zeroext %2203, i16 zeroext %654, i16 zeroext %2205, i16 zeroext %2207, i32 0)
  %2219 = add nuw nsw i64 %2209, 1
  %2220 = icmp slt i64 %2219, %970
  br i1 %2220, label %2208, label %2253

2221:                                             ; preds = %2192, %2189, %2179
  %2222 = icmp sgt i64 %970, 0
  br i1 %2222, label %2223, label %2253

2223:                                             ; preds = %2221
  %2224 = mul i64 %651, %922
  %2225 = sub i64 %2224, %477
  %2226 = add i64 %2225, %948
  %2227 = mul i64 %208, %2226
  %2228 = add i64 %652, %2227
  br label %2229

2229:                                             ; preds = %2223, %2236
  %2230 = phi i64 [ 0, %2223 ], [ %2237, %2236 ]
  br i1 %2187, label %2231, label %2236

2231:                                             ; preds = %2229
  %2232 = mul nsw i64 %2230, %971
  %2233 = add nsw i64 %2232, %231
  %2234 = mul nsw i64 %2230, %974
  %2235 = add i64 %2228, %2234
  br label %2239

2236:                                             ; preds = %2239, %2229
  %2237 = add nuw nsw i64 %2230, 1
  %2238 = icmp slt i64 %2237, %970
  br i1 %2238, label %2229, label %2253

2239:                                             ; preds = %2231, %2239
  %2240 = phi i64 [ 0, %2231 ], [ %2251, %2239 ]
  %2241 = mul nsw i64 %2240, %972
  %2242 = add nsw i64 %2233, %2241
  %2243 = trunc i64 %2242 to i32
  %2244 = getelementptr inbounds i16, i16* %286, i32 %2243
  %2245 = bitcast i16* %2244 to i8*
  %2246 = mul nsw i64 %2240, %975
  %2247 = add i64 %2235, %2246
  %2248 = trunc i64 %2247 to i32
  %2249 = getelementptr inbounds i16, i16* %0, i32 %2248
  %2250 = bitcast i16* %2249 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %2245, i8* %2250, i8 zeroext 0, i16 zeroext 1, i16 zeroext %653, i16 zeroext 0, i16 zeroext 0, i32 0)
  %2251 = add nuw nsw i64 %2240, 1
  %2252 = icmp ult i64 %2251, %963
  br i1 %2252, label %2239, label %2236

2253:                                             ; preds = %2236, %2208, %2221, %2195, %917
  %2254 = phi i64 [ %901, %917 ], [ %2180, %2195 ], [ %2180, %2221 ], [ %2180, %2208 ], [ %2180, %2236 ]
  %2255 = icmp slt i64 %699, %260
  %2256 = and i1 %686, %2255
  br i1 %2256, label %2257, label %2258

2257:                                             ; preds = %2253
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 4, i32 3, i32 1)
  br label %2258

2258:                                             ; preds = %2257, %2253
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 4, i32 3, i32 0)
  br i1 %655, label %2259, label %2271

2259:                                             ; preds = %2258
  %2260 = mul nsw i64 %760, %172
  %2261 = icmp slt i64 %762, 0
  %2262 = sub nsw i64 0, %762
  %2263 = sub nsw i64 %748, %761
  %2264 = icmp sgt i64 %2263, %2262
  %2265 = select i1 %2264, i64 %2262, i64 %2263
  %2266 = select i1 %2261, i64 %2265, i64 0
  %2267 = icmp slt i64 %2266, %477
  %2268 = select i1 %2267, i64 %2266, i64 %477
  %2269 = icmp sgt i64 %735, %195
  %2270 = mul nsw i64 %734, %87
  br label %2272

2271:                                             ; preds = %3438, %2258
  br i1 %2256, label %3441, label %3442

2272:                                             ; preds = %2259, %3438
  %2273 = phi i64 [ 0, %2259 ], [ %3439, %3438 ]
  %2274 = shl nuw nsw i64 %2273, 1
  %2275 = sdiv i64 %2274, %198
  %2276 = mul nsw i64 %2275, %198
  %2277 = sub nsw i64 %2274, %2276
  %2278 = add nsw i64 %2275, %351
  %2279 = mul nsw i64 %2278, %160
  %2280 = sub nsw i64 %87, %2279
  %2281 = icmp sgt i64 %2280, %160
  %2282 = select i1 %2281, i64 %160, i64 %2280
  %2283 = icmp sgt i64 %2282, 0
  %2284 = select i1 %2283, i64 %2282, i64 0
  %2285 = add nsw i64 %2277, %752
  %2286 = add nsw i64 %2285, 1
  %2287 = mul nsw i64 %2286, %177
  %2288 = icmp slt i64 %2287, %240
  %2289 = select i1 %2288, i64 %2287, i64 %240
  %2290 = shl nsw i64 %2289, 4
  %2291 = mul nsw i64 %2285, %177
  %2292 = shl nsw i64 %2291, 4
  %2293 = sub nsw i64 %2290, %2292
  %2294 = sub nsw i64 %240, %2291
  %2295 = icmp sgt i64 %2294, %177
  %2296 = select i1 %2295, i64 %177, i64 %2294
  %2297 = icmp sgt i64 %2296, 0
  %2298 = select i1 %2297, i64 %2296, i64 0
  %2299 = sub nsw i64 %2292, %2260
  %2300 = freeze i64 %2299
  %2301 = freeze i64 %172
  %2302 = sdiv i64 %2300, %2301
  %2303 = mul i64 %2302, %2301
  %2304 = sub i64 %2300, %2303
  %2305 = mul nsw i64 %2302, %301
  %2306 = sub nsw i64 %2305, %2268
  %2307 = mul nsw i64 %2304, %150
  %2308 = sub nsw i64 %2307, %244
  %2309 = sub nsw i64 %120, %2292
  %2310 = icmp slt i64 %178, %2309
  %2311 = select i1 %2310, i64 %178, i64 %2309
  %2312 = icmp sgt i64 %2311, 0
  %2313 = select i1 %2312, i64 %2311, i64 0
  %2314 = icmp eq i64 %2273, 0
  br i1 %2314, label %2316, label %2315

2315:                                             ; preds = %2272
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %2316

2316:                                             ; preds = %2272, %2315
  br i1 %656, label %2317, label %2348

2317:                                             ; preds = %2316
  %2318 = icmp slt i64 %2284, 2
  %2319 = icmp slt i64 %2282, 2
  %2320 = and i1 %2319, %2318
  %2321 = mul i64 %2275, %160
  %2322 = trunc i64 %2284 to i8
  %2323 = icmp sgt i64 %2282, 1
  %2324 = or i1 %658, %2323
  %2325 = shl i64 %2282, 8
  %2326 = trunc i64 %2308 to i16
  %2327 = trunc i64 %2306 to i16
  %2328 = trunc i64 %2302 to i32
  %2329 = trunc i64 %2304 to i32
  %2330 = add nsw i64 %2298, -1
  %2331 = icmp sgt i64 %2298, 1
  %2332 = trunc i64 %2298 to i8
  %2333 = and i1 %2283, %2297
  %2334 = trunc i64 %2298 to i16
  %2335 = shl i16 %2334, 4
  %2336 = trunc i64 %2284 to i16
  %2337 = shl i16 %2336, 4
  %2338 = icmp sgt i64 %2298, 4
  %2339 = icmp sgt i64 %2284, 1
  %2340 = icmp sgt i64 %2298, 2
  %2341 = icmp sgt i64 %2284, 2
  %2342 = and i1 %2339, %2338
  %2343 = and i1 %2341, %2340
  %2344 = or i1 %2342, %2343
  %2345 = and i1 %2339, %2338
  %2346 = and i1 %2341, %2340
  %2347 = or i1 %2345, %2346
  br label %2349

2348:                                             ; preds = %2683, %2316
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br i1 %2314, label %2687, label %2686

2349:                                             ; preds = %2317, %2683
  %2350 = phi i64 [ 0, %2317 ], [ %2684, %2683 ]
  %2351 = shl nuw nsw i64 %2350, 1
  %2352 = sdiv i64 %2351, %126
  %2353 = mul nsw i64 %2352, %126
  %2354 = mul nsw i64 %2351, %122
  %2355 = sub nsw i64 %94, %2354
  %2356 = icmp sgt i64 %2355, %122
  %2357 = select i1 %2356, i64 %122, i64 %2355
  %2358 = icmp sgt i64 %2357, 0
  %2359 = select i1 %2358, i64 %2357, i64 0
  %2360 = freeze i64 %2354
  %2361 = freeze i64 %166
  %2362 = sdiv i64 %2360, %2361
  %2363 = mul i64 %2362, %2361
  %2364 = sub i64 %2360, %2363
  %2365 = sdiv i64 %2364, %93
  %2366 = srem i64 %2354, %93
  %2367 = icmp eq i64 %2350, 0
  br i1 %2367, label %2369, label %2368

2368:                                             ; preds = %2349
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %2369

2369:                                             ; preds = %2349, %2368
  %2370 = and i1 %2281, %2356
  br i1 %2370, label %2371, label %2394

2371:                                             ; preds = %2369
  br i1 %2324, label %2378, label %2372

2372:                                             ; preds = %2371
  %2373 = mul nsw i64 %2354, %358
  %2374 = add i64 %2321, %2373
  %2375 = trunc i64 %2374 to i32
  %2376 = shl i32 %2375, 8
  %2377 = getelementptr inbounds i16, i16* %284, i32 %2376
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %2377, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %2418

2378:                                             ; preds = %2371
  br i1 %691, label %2418, label %2379

2379:                                             ; preds = %2378, %2379
  %2380 = phi i64 [ %2392, %2379 ], [ 0, %2378 ]
  %2381 = mul i64 %2325, %2380
  %2382 = add nsw i64 %2381, %248
  %2383 = trunc i64 %2382 to i32
  %2384 = getelementptr inbounds i16, i16* %328, i32 %2383
  %2385 = add i64 %2380, %2354
  %2386 = mul i64 %2385, %358
  %2387 = add i64 %2386, %2279
  %2388 = shl i64 %2387, 8
  %2389 = add i64 %663, %2388
  %2390 = trunc i64 %2389 to i32
  %2391 = getelementptr inbounds i16, i16* %284, i32 %2390
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %2384, i16* %2391, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %2392 = add nuw nsw i64 %2380, 1
  %2393 = icmp slt i64 %2392, %122
  br i1 %2393, label %2379, label %2418

2394:                                             ; preds = %2369
  %2395 = and i1 %2283, %2358
  br i1 %2395, label %2396, label %2418

2396:                                             ; preds = %2394
  br i1 %2320, label %2397, label %2404

2397:                                             ; preds = %2396
  %2398 = mul nsw i64 %2354, %358
  %2399 = add i64 %2321, %2398
  %2400 = trunc i64 %2399 to i32
  %2401 = shl i32 %2400, 8
  %2402 = getelementptr inbounds i16, i16* %284, i32 %2401
  %2403 = trunc i64 %2359 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %2402, i16 zeroext 0, i8 zeroext %2403, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %2418

2404:                                             ; preds = %2396, %2404
  %2405 = phi i64 [ %2416, %2404 ], [ 0, %2396 ]
  %2406 = mul nsw i64 %2405, %2282
  %2407 = trunc i64 %2406 to i32
  %2408 = shl i32 %2407, 8
  %2409 = getelementptr inbounds i16, i16* %328, i32 %2408
  %2410 = add i64 %2405, %2354
  %2411 = mul i64 %2410, %358
  %2412 = add i64 %2321, %2411
  %2413 = trunc i64 %2412 to i32
  %2414 = shl i32 %2413, 8
  %2415 = getelementptr inbounds i16, i16* %284, i32 %2414
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %2409, i16* %2415, i16 zeroext 0, i8 zeroext %2322, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %2416 = add nuw nsw i64 %2405, 1
  %2417 = icmp ult i64 %2416, %2359
  br i1 %2417, label %2404, label %2418

2418:                                             ; preds = %2404, %2379, %2378, %2394, %2397, %2372
  %2419 = and i1 %2297, %2358
  %2420 = and i1 %792, %2419
  br i1 %2420, label %2421, label %2492

2421:                                             ; preds = %2418
  %2422 = trunc i64 %2366 to i8
  %2423 = trunc i64 %2365 to i8
  %2424 = trunc i64 %2362 to i16
  %2425 = icmp slt i64 %2359, %2298
  %2426 = trunc i64 %2359 to i8
  %2427 = select i1 %2425, i8 %2426, i8 1
  %2428 = zext i1 %2425 to i8
  %2429 = select i1 %2425, i64 %2298, i64 %2359
  %2430 = trunc i64 %2429 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %312, i8 zeroext %2422, i8 zeroext %2423, i16 signext %2326, i16 signext %2327, i16 zeroext %2424, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %2427, i8 zeroext %2428, i8 zeroext %2430, i32 0)
  %2431 = add nuw nsw i64 %2359, %2298
  %2432 = icmp eq i64 %2431, 2
  br i1 %2432, label %2492, label %2433

2433:                                             ; preds = %2421
  br i1 %2425, label %2462, label %2434

2434:                                             ; preds = %2433
  br i1 %2331, label %2435, label %2492

2435:                                             ; preds = %2434, %2435
  %2436 = phi i32 [ %2445, %2435 ], [ %2328, %2434 ]
  %2437 = phi i32 [ %2447, %2435 ], [ %2329, %2434 ]
  %2438 = phi i64 [ %2448, %2435 ], [ 0, %2434 ]
  %2439 = add i32 %2437, %669
  %2440 = icmp slt i32 %170, %2439
  %2441 = zext i32 %2436 to i64
  %2442 = add nsw i64 %174, %2441
  %2443 = zext i1 %2440 to i64
  %2444 = add i64 %2442, %2443
  %2445 = trunc i64 %2444 to i32
  %2446 = select i1 %2440, i32 %670, i32 0
  %2447 = sub i32 %2439, %2446
  %2448 = add nuw nsw i64 %2438, 1
  %2449 = mul nuw nsw i64 %2448, %2359
  %2450 = trunc i64 %2449 to i32
  %2451 = shl i32 %2450, 8
  %2452 = getelementptr inbounds i16, i16* %331, i32 %2451
  %2453 = mul nsw i32 %2447, %39
  %2454 = zext i32 %2453 to i64
  %2455 = sub i64 %2454, %244
  %2456 = trunc i64 %2455 to i16
  %2457 = mul nsw i32 %36, %2445
  %2458 = zext i32 %2457 to i64
  %2459 = sub i64 %2458, %2268
  %2460 = trunc i64 %2459 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %2452, i16* %312, i8 zeroext %2422, i8 zeroext %2423, i16 signext %2456, i16 signext %2460, i16 zeroext %2424, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %2426, i32 0)
  %2461 = icmp slt i64 %2448, %2330
  br i1 %2461, label %2435, label %2492

2462:                                             ; preds = %2433
  %2463 = add nsw i64 %2359, -1
  %2464 = icmp sgt i64 %2359, 1
  br i1 %2464, label %2465, label %2492

2465:                                             ; preds = %2462
  %2466 = trunc i64 %2362 to i32
  %2467 = trunc i64 %2366 to i32
  %2468 = trunc i64 %2365 to i32
  br label %2469

2469:                                             ; preds = %2465, %2469
  %2470 = phi i32 [ %2482, %2469 ], [ %2468, %2465 ]
  %2471 = phi i32 [ %2478, %2469 ], [ %2467, %2465 ]
  %2472 = phi i32 [ %2481, %2469 ], [ %2466, %2465 ]
  %2473 = phi i64 [ %2490, %2469 ], [ 0, %2465 ]
  %2474 = add nsw i32 %2471, 1
  %2475 = icmp eq i32 %2474, %27
  %2476 = zext i1 %2475 to i32
  %2477 = add nsw i32 %2470, %2476
  %2478 = select i1 %2475, i32 0, i32 %2474
  %2479 = icmp eq i32 %2477, %24
  %2480 = zext i1 %2479 to i32
  %2481 = add nsw i32 %2472, %2480
  %2482 = select i1 %2479, i32 0, i32 %2477
  %2483 = trunc i64 %2473 to i32
  %2484 = shl i32 %2483, 8
  %2485 = add i32 %2484, 256
  %2486 = getelementptr inbounds i16, i16* %331, i32 %2485
  %2487 = trunc i32 %2478 to i8
  %2488 = trunc i32 %2482 to i8
  %2489 = trunc i32 %2481 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %2486, i16* %312, i8 zeroext %2487, i8 zeroext %2488, i16 signext %2326, i16 signext %2327, i16 zeroext %2489, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %2426, i8 zeroext 1, i8 zeroext %2332, i32 0)
  %2490 = add nuw nsw i64 %2473, 1
  %2491 = icmp slt i64 %2490, %2463
  br i1 %2491, label %2469, label %2492

2492:                                             ; preds = %2435, %2469, %2434, %2462, %2421, %2418
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %2493 = icmp sle i64 %2351, %123
  %2494 = and i1 %792, %2493
  %2495 = and i1 %2333, %2358
  %2496 = and i1 %2494, %2495
  br i1 %2496, label %2497, label %2513

2497:                                             ; preds = %2492
  %2498 = icmp sgt i64 %94, %2354
  %2499 = shl nsw i64 %2354, 4
  %2500 = sub nsw i64 %249, %2499
  %2501 = sub nsw i64 %2499, %249
  %2502 = select i1 %2498, i64 %2500, i64 %2501
  %2503 = icmp sgt i64 %2502, 0
  br i1 %2503, label %2504, label %2513

2504:                                             ; preds = %2497
  %2505 = shl nsw i64 %2359, 4
  %2506 = icmp slt i64 %2505, %2502
  %2507 = select i1 %2506, i64 %2505, i64 %2502
  %2508 = trunc i64 %2507 to i16
  %2509 = icmp eq i64 %2352, 0
  %2510 = icmp eq i64 %2351, %2353
  %2511 = and i1 %2509, %2510
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %331, i16* %328, i16 zeroext %2335, i16 zeroext %2508, i16 zeroext %2337, i1 zeroext %2511)
  br i1 %2344, label %2513, label %2512

2512:                                             ; preds = %2504
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %2513

2513:                                             ; preds = %2504, %2492, %2512, %2497
  %2514 = icmp slt i64 %2350, %250
  %2515 = and i1 %671, %2514
  br i1 %2515, label %2516, label %2517

2516:                                             ; preds = %2513
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %2517

2517:                                             ; preds = %2516, %2513
  br i1 %2367, label %2519, label %2518

2518:                                             ; preds = %2517
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %2519

2519:                                             ; preds = %2517, %2518
  %2520 = or i64 %2351, 1
  %2521 = icmp slt i64 %2520, %245
  br i1 %2521, label %2522, label %2681

2522:                                             ; preds = %2519
  %2523 = sdiv i64 %2520, %126
  %2524 = mul nsw i64 %2523, %126
  %2525 = mul nsw i64 %2520, %122
  %2526 = sub nsw i64 %94, %2525
  %2527 = icmp sgt i64 %2526, %122
  %2528 = select i1 %2527, i64 %122, i64 %2526
  %2529 = icmp sgt i64 %2528, 0
  %2530 = select i1 %2529, i64 %2528, i64 0
  %2531 = freeze i64 %2525
  %2532 = freeze i64 %166
  %2533 = sdiv i64 %2531, %2532
  %2534 = mul i64 %2533, %2532
  %2535 = sub i64 %2531, %2534
  %2536 = sdiv i64 %2535, %93
  %2537 = srem i64 %2525, %93
  %2538 = and i1 %2281, %2527
  br i1 %2538, label %2539, label %2562

2539:                                             ; preds = %2522
  br i1 %2324, label %2546, label %2540

2540:                                             ; preds = %2539
  %2541 = mul nsw i64 %2525, %358
  %2542 = add i64 %2321, %2541
  %2543 = trunc i64 %2542 to i32
  %2544 = shl i32 %2543, 8
  %2545 = getelementptr inbounds i16, i16* %284, i32 %2544
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %2545, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %2586

2546:                                             ; preds = %2539
  br i1 %692, label %2586, label %2547

2547:                                             ; preds = %2546, %2547
  %2548 = phi i64 [ %2560, %2547 ], [ 0, %2546 ]
  %2549 = mul i64 %2325, %2548
  %2550 = add nsw i64 %2549, %248
  %2551 = trunc i64 %2550 to i32
  %2552 = getelementptr inbounds i16, i16* %332, i32 %2551
  %2553 = add i64 %2548, %2525
  %2554 = mul i64 %2553, %358
  %2555 = add i64 %2554, %2279
  %2556 = shl i64 %2555, 8
  %2557 = add i64 %663, %2556
  %2558 = trunc i64 %2557 to i32
  %2559 = getelementptr inbounds i16, i16* %284, i32 %2558
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %2552, i16* %2559, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %2560 = add nuw nsw i64 %2548, 1
  %2561 = icmp slt i64 %2560, %122
  br i1 %2561, label %2547, label %2586

2562:                                             ; preds = %2522
  %2563 = and i1 %2283, %2529
  br i1 %2563, label %2564, label %2586

2564:                                             ; preds = %2562
  br i1 %2320, label %2565, label %2572

2565:                                             ; preds = %2564
  %2566 = mul nsw i64 %2525, %358
  %2567 = add i64 %2321, %2566
  %2568 = trunc i64 %2567 to i32
  %2569 = shl i32 %2568, 8
  %2570 = getelementptr inbounds i16, i16* %284, i32 %2569
  %2571 = trunc i64 %2530 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %2570, i16 zeroext 0, i8 zeroext %2571, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %2586

2572:                                             ; preds = %2564, %2572
  %2573 = phi i64 [ %2584, %2572 ], [ 0, %2564 ]
  %2574 = mul nsw i64 %2573, %2282
  %2575 = trunc i64 %2574 to i32
  %2576 = shl i32 %2575, 8
  %2577 = getelementptr inbounds i16, i16* %332, i32 %2576
  %2578 = add i64 %2573, %2525
  %2579 = mul i64 %2578, %358
  %2580 = add i64 %2321, %2579
  %2581 = trunc i64 %2580 to i32
  %2582 = shl i32 %2581, 8
  %2583 = getelementptr inbounds i16, i16* %284, i32 %2582
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %2577, i16* %2583, i16 zeroext 0, i8 zeroext %2322, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %2584 = add nuw nsw i64 %2573, 1
  %2585 = icmp ult i64 %2584, %2530
  br i1 %2585, label %2572, label %2586

2586:                                             ; preds = %2572, %2547, %2546, %2562, %2565, %2540
  %2587 = and i1 %2297, %2529
  %2588 = and i1 %792, %2587
  br i1 %2588, label %2589, label %2660

2589:                                             ; preds = %2586
  %2590 = trunc i64 %2537 to i8
  %2591 = trunc i64 %2536 to i8
  %2592 = trunc i64 %2533 to i16
  %2593 = icmp slt i64 %2530, %2298
  %2594 = trunc i64 %2530 to i8
  %2595 = select i1 %2593, i8 %2594, i8 1
  %2596 = zext i1 %2593 to i8
  %2597 = select i1 %2593, i64 %2298, i64 %2530
  %2598 = trunc i64 %2597 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %312, i8 zeroext %2590, i8 zeroext %2591, i16 signext %2326, i16 signext %2327, i16 zeroext %2592, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %2595, i8 zeroext %2596, i8 zeroext %2598, i32 0)
  %2599 = add nuw nsw i64 %2530, %2298
  %2600 = icmp eq i64 %2599, 2
  br i1 %2600, label %2660, label %2601

2601:                                             ; preds = %2589
  br i1 %2593, label %2630, label %2602

2602:                                             ; preds = %2601
  br i1 %2331, label %2603, label %2660

2603:                                             ; preds = %2602, %2603
  %2604 = phi i32 [ %2613, %2603 ], [ %2328, %2602 ]
  %2605 = phi i32 [ %2615, %2603 ], [ %2329, %2602 ]
  %2606 = phi i64 [ %2616, %2603 ], [ 0, %2602 ]
  %2607 = add i32 %2605, %669
  %2608 = icmp slt i32 %170, %2607
  %2609 = zext i32 %2604 to i64
  %2610 = add nsw i64 %174, %2609
  %2611 = zext i1 %2608 to i64
  %2612 = add i64 %2610, %2611
  %2613 = trunc i64 %2612 to i32
  %2614 = select i1 %2608, i32 %670, i32 0
  %2615 = sub i32 %2607, %2614
  %2616 = add nuw nsw i64 %2606, 1
  %2617 = mul nuw nsw i64 %2616, %2530
  %2618 = trunc i64 %2617 to i32
  %2619 = shl i32 %2618, 8
  %2620 = getelementptr inbounds i16, i16* %333, i32 %2619
  %2621 = mul nsw i32 %2615, %39
  %2622 = zext i32 %2621 to i64
  %2623 = sub i64 %2622, %244
  %2624 = trunc i64 %2623 to i16
  %2625 = mul nsw i32 %36, %2613
  %2626 = zext i32 %2625 to i64
  %2627 = sub i64 %2626, %2268
  %2628 = trunc i64 %2627 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %2620, i16* %312, i8 zeroext %2590, i8 zeroext %2591, i16 signext %2624, i16 signext %2628, i16 zeroext %2592, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %2594, i32 0)
  %2629 = icmp slt i64 %2616, %2330
  br i1 %2629, label %2603, label %2660

2630:                                             ; preds = %2601
  %2631 = add nsw i64 %2530, -1
  %2632 = icmp sgt i64 %2530, 1
  br i1 %2632, label %2633, label %2660

2633:                                             ; preds = %2630
  %2634 = trunc i64 %2533 to i32
  %2635 = trunc i64 %2537 to i32
  %2636 = trunc i64 %2536 to i32
  br label %2637

2637:                                             ; preds = %2633, %2637
  %2638 = phi i32 [ %2650, %2637 ], [ %2636, %2633 ]
  %2639 = phi i32 [ %2646, %2637 ], [ %2635, %2633 ]
  %2640 = phi i32 [ %2649, %2637 ], [ %2634, %2633 ]
  %2641 = phi i64 [ %2658, %2637 ], [ 0, %2633 ]
  %2642 = add nsw i32 %2639, 1
  %2643 = icmp eq i32 %2642, %27
  %2644 = zext i1 %2643 to i32
  %2645 = add nsw i32 %2638, %2644
  %2646 = select i1 %2643, i32 0, i32 %2642
  %2647 = icmp eq i32 %2645, %24
  %2648 = zext i1 %2647 to i32
  %2649 = add nsw i32 %2640, %2648
  %2650 = select i1 %2647, i32 0, i32 %2645
  %2651 = trunc i64 %2641 to i32
  %2652 = shl i32 %2651, 8
  %2653 = add i32 %2652, 256
  %2654 = getelementptr inbounds i16, i16* %333, i32 %2653
  %2655 = trunc i32 %2646 to i8
  %2656 = trunc i32 %2650 to i8
  %2657 = trunc i32 %2649 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %2654, i16* %312, i8 zeroext %2655, i8 zeroext %2656, i16 signext %2326, i16 signext %2327, i16 zeroext %2657, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %2594, i8 zeroext 1, i8 zeroext %2332, i32 0)
  %2658 = add nuw nsw i64 %2641, 1
  %2659 = icmp slt i64 %2658, %2631
  br i1 %2659, label %2637, label %2660

2660:                                             ; preds = %2603, %2637, %2602, %2630, %2589, %2586
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %2661 = icmp sle i64 %2520, %123
  %2662 = and i1 %792, %2661
  %2663 = and i1 %2333, %2529
  %2664 = and i1 %2662, %2663
  br i1 %2664, label %2665, label %2681

2665:                                             ; preds = %2660
  %2666 = icmp sgt i64 %94, %2525
  %2667 = shl nsw i64 %2525, 4
  %2668 = sub nsw i64 %249, %2667
  %2669 = sub nsw i64 %2667, %249
  %2670 = select i1 %2666, i64 %2668, i64 %2669
  %2671 = icmp sgt i64 %2670, 0
  br i1 %2671, label %2672, label %2681

2672:                                             ; preds = %2665
  %2673 = shl nsw i64 %2530, 4
  %2674 = icmp slt i64 %2673, %2670
  %2675 = select i1 %2674, i64 %2673, i64 %2670
  %2676 = trunc i64 %2675 to i16
  %2677 = icmp eq i64 %2523, 0
  %2678 = icmp eq i64 %2520, %2524
  %2679 = and i1 %2677, %2678
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %333, i16* %332, i16 zeroext %2335, i16 zeroext %2676, i16 zeroext %2337, i1 zeroext %2679)
  br i1 %2347, label %2681, label %2680

2680:                                             ; preds = %2672
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %2681

2681:                                             ; preds = %2672, %2660, %2665, %2680, %2519
  br i1 %2515, label %2682, label %2683

2682:                                             ; preds = %2681
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %2683

2683:                                             ; preds = %2682, %2681
  %2684 = add nuw nsw i64 %2350, 1
  %2685 = icmp slt i64 %2684, %247
  br i1 %2685, label %2349, label %2348

2686:                                             ; preds = %2348
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %2687

2687:                                             ; preds = %2348, %2686
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %672, label %2688, label %2732

2688:                                             ; preds = %2687
  %2689 = icmp sgt i64 %2293, 1048559
  %2690 = shl i64 %2293, 4
  %2691 = and i64 %2298, 72057594037927935
  %2692 = shl nuw nsw i64 %2691, 8
  %2693 = sub nsw i64 %2690, %2692
  %2694 = icmp slt i64 %2693, -15
  %2695 = trunc i64 %2298 to i16
  %2696 = sdiv i64 %2693, 256
  %2697 = trunc i64 %2696 to i16
  %2698 = shl nuw nsw i64 %2691, 4
  %2699 = sub nsw i64 %2293, %2698
  %2700 = trunc i64 %2699 to i16
  %2701 = sub nsw i64 %2690, %254
  %2702 = icmp slt i64 %2701, -15
  %2703 = sdiv i64 %2701, 256
  %2704 = trunc i64 %2703 to i16
  %2705 = sub nsw i64 %2293, %255
  %2706 = trunc i64 %2705 to i16
  %2707 = icmp sgt i64 %2278, %188
  %2708 = icmp sgt i64 %2285, %193
  %2709 = or i1 %2707, %2708
  %2710 = or i1 %2269, %2709
  %2711 = icmp sgt i64 %2293, 65534
  %2712 = sub nsw i64 %120, %2313
  %2713 = sub nsw i64 %2293, %2313
  %2714 = shl nsw i64 %2291, 8
  %2715 = trunc i64 %2313 to i16
  %2716 = trunc i64 %2713 to i16
  %2717 = trunc i64 %2712 to i16
  %2718 = icmp slt i64 %2293, 65535
  %2719 = and i1 %680, %2718
  %2720 = and i1 %681, %2719
  %2721 = sub nsw i64 %2293, %178
  %2722 = icmp slt i64 %2721, 0
  %2723 = trunc i64 %2721 to i16
  %2724 = or i1 %2689, %2694
  %2725 = or i1 %2689, %2702
  %2726 = or i1 %677, %2711
  %2727 = or i64 %2712, %2713
  %2728 = icmp slt i64 %2727, 0
  %2729 = or i1 %2728, %2726
  %2730 = xor i1 %2720, true
  %2731 = or i1 %2722, %2730
  br label %2735

2732:                                             ; preds = %2853, %2687
  %2733 = icmp slt i64 %2273, %259
  %2734 = and i1 %685, %2733
  br i1 %2734, label %2856, label %2857

2735:                                             ; preds = %2688, %2853
  %2736 = phi i64 [ 0, %2688 ], [ %2854, %2853 ]
  %2737 = mul nsw i64 %2736, %673
  %2738 = sub nsw i64 %87, %2737
  %2739 = sub i64 %2738, %2279
  %2740 = icmp sgt i64 %2739, %673
  %2741 = select i1 %2740, i64 %673, i64 %2739
  %2742 = icmp sgt i64 %2741, 0
  %2743 = select i1 %2742, i64 %2741, i64 0
  %2744 = icmp eq i64 %2736, 0
  br i1 %2744, label %2746, label %2745

2745:                                             ; preds = %2735
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %2746

2746:                                             ; preds = %2735, %2745
  br i1 %792, label %2747, label %2848

2747:                                             ; preds = %2746
  %2748 = and i1 %2295, %2740
  br i1 %2748, label %2749, label %2769

2749:                                             ; preds = %2747
  br i1 %2725, label %2755, label %2750

2750:                                             ; preds = %2749
  %2751 = mul nsw i64 %2737, %2293
  %2752 = trunc i64 %2751 to i32
  %2753 = shl i32 %2752, 4
  %2754 = getelementptr inbounds float, float* %325, i32 %2753
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %2754, i8 zeroext 0, i16 zeroext %676, i16 zeroext %675, i16 zeroext %2704, i16 zeroext %2706, i32 1)
  br label %2790

2755:                                             ; preds = %2749
  br i1 %674, label %2756, label %2790

2756:                                             ; preds = %2755
  %2757 = mul nsw i64 %2737, %2293
  %2758 = shl nsw i64 %2757, 4
  br label %2759

2759:                                             ; preds = %2756, %2759
  %2760 = phi i64 [ 0, %2756 ], [ %2767, %2759 ]
  %2761 = mul i64 %2690, %2760
  %2762 = trunc i64 %2761 to i32
  %2763 = getelementptr inbounds i16, i16* %336, i32 %2762
  %2764 = add nsw i64 %2761, %2758
  %2765 = trunc i64 %2764 to i32
  %2766 = getelementptr inbounds float, float* %325, i32 %2765
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %2763, float* %2766, i8 zeroext 0, i16 zeroext 1, i16 zeroext %675, i16 zeroext 0, i16 zeroext 0, i32 1)
  %2767 = add nuw nsw i64 %2760, 1
  %2768 = icmp slt i64 %2767, %673
  br i1 %2768, label %2759, label %2790

2769:                                             ; preds = %2747
  %2770 = and i1 %2297, %2742
  br i1 %2770, label %2771, label %2790

2771:                                             ; preds = %2769
  %2772 = mul nsw i64 %2737, %2293
  br i1 %2724, label %2778, label %2773

2773:                                             ; preds = %2771
  %2774 = trunc i64 %2772 to i32
  %2775 = shl i32 %2774, 4
  %2776 = getelementptr inbounds float, float* %325, i32 %2775
  %2777 = trunc i64 %2743 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %2776, i8 zeroext 0, i16 zeroext %2777, i16 zeroext %2695, i16 zeroext %2697, i16 zeroext %2700, i32 1)
  br label %2790

2778:                                             ; preds = %2771
  %2779 = shl nsw i64 %2772, 4
  br label %2780

2780:                                             ; preds = %2778, %2780
  %2781 = phi i64 [ 0, %2778 ], [ %2788, %2780 ]
  %2782 = mul i64 %2690, %2781
  %2783 = trunc i64 %2782 to i32
  %2784 = getelementptr inbounds i16, i16* %336, i32 %2783
  %2785 = add nsw i64 %2782, %2779
  %2786 = trunc i64 %2785 to i32
  %2787 = getelementptr inbounds float, float* %325, i32 %2786
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %2784, float* %2787, i8 zeroext 0, i16 zeroext 1, i16 zeroext %2695, i16 zeroext 0, i16 zeroext 0, i32 1)
  %2788 = add nuw nsw i64 %2781, 1
  %2789 = icmp ult i64 %2788, %2743
  br i1 %2789, label %2780, label %2790

2790:                                             ; preds = %2780, %2759, %2755, %2750, %2773, %2769
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %2710, label %2849, label %2791

2791:                                             ; preds = %2790
  %2792 = and i1 %2310, %2740
  br i1 %2792, label %2793, label %2821

2793:                                             ; preds = %2791
  br i1 %2731, label %2802, label %2794

2794:                                             ; preds = %2793
  %2795 = add i64 %2737, %2279
  %2796 = add i64 %2795, %2270
  %2797 = mul i64 %678, %2796
  %2798 = add nsw i64 %2797, %2714
  %2799 = trunc i64 %2798 to i32
  %2800 = getelementptr inbounds i16, i16* %2, i32 %2799
  %2801 = bitcast i16* %2800 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2801, i8* %679, i8 zeroext 0, i16 zeroext %676, i16 zeroext %682, i16 zeroext %2723, i16 zeroext %683)
  br label %2849

2802:                                             ; preds = %2793
  br i1 %674, label %2803, label %2849

2803:                                             ; preds = %2802
  %2804 = add i64 %2737, %2279
  %2805 = add i64 %2804, %2270
  br label %2806

2806:                                             ; preds = %2803, %2806
  %2807 = phi i64 [ 0, %2803 ], [ %2819, %2806 ]
  %2808 = add i64 %2805, %2807
  %2809 = mul i64 %678, %2808
  %2810 = add i64 %2809, %2714
  %2811 = trunc i64 %2810 to i32
  %2812 = getelementptr inbounds i16, i16* %2, i32 %2811
  %2813 = bitcast i16* %2812 to i8*
  %2814 = mul nsw i64 %2807, %2293
  %2815 = trunc i64 %2814 to i32
  %2816 = shl i32 %2815, 4
  %2817 = getelementptr inbounds i16, i16* %336, i32 %2816
  %2818 = bitcast i16* %2817 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2813, i8* %2818, i8 zeroext 0, i16 zeroext 1, i16 zeroext %682, i16 zeroext 0, i16 zeroext 0)
  %2819 = add nuw nsw i64 %2807, 1
  %2820 = icmp slt i64 %2819, %673
  br i1 %2820, label %2806, label %2849

2821:                                             ; preds = %2791
  %2822 = and i1 %2312, %2742
  br i1 %2822, label %2823, label %2849

2823:                                             ; preds = %2821
  %2824 = add i64 %2737, %2279
  %2825 = add i64 %2824, %2270
  br i1 %2729, label %2833, label %2826

2826:                                             ; preds = %2823
  %2827 = mul i64 %678, %2825
  %2828 = add nsw i64 %2827, %2714
  %2829 = trunc i64 %2828 to i32
  %2830 = getelementptr inbounds i16, i16* %2, i32 %2829
  %2831 = bitcast i16* %2830 to i8*
  %2832 = trunc i64 %2743 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2831, i8* %679, i8 zeroext 0, i16 zeroext %2832, i16 zeroext %2715, i16 zeroext %2716, i16 zeroext %2717)
  br label %2849

2833:                                             ; preds = %2823, %2833
  %2834 = phi i64 [ %2846, %2833 ], [ 0, %2823 ]
  %2835 = add i64 %2825, %2834
  %2836 = mul i64 %678, %2835
  %2837 = add i64 %2836, %2714
  %2838 = trunc i64 %2837 to i32
  %2839 = getelementptr inbounds i16, i16* %2, i32 %2838
  %2840 = bitcast i16* %2839 to i8*
  %2841 = mul nsw i64 %2834, %2293
  %2842 = trunc i64 %2841 to i32
  %2843 = shl i32 %2842, 4
  %2844 = getelementptr inbounds i16, i16* %336, i32 %2843
  %2845 = bitcast i16* %2844 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %2840, i8* %2845, i8 zeroext 0, i16 zeroext 1, i16 zeroext %2715, i16 zeroext 0, i16 zeroext 0)
  %2846 = add nuw nsw i64 %2834, 1
  %2847 = icmp ult i64 %2846, %2743
  br i1 %2847, label %2833, label %2849

2848:                                             ; preds = %2746
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %2849

2849:                                             ; preds = %2833, %2806, %2802, %2790, %2848, %2794, %2826, %2821
  %2850 = icmp slt i64 %2736, %258
  %2851 = and i1 %684, %2850
  br i1 %2851, label %2852, label %2853

2852:                                             ; preds = %2849
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %2853

2853:                                             ; preds = %2852, %2849
  %2854 = add nuw nsw i64 %2736, 1
  %2855 = icmp slt i64 %2854, %257
  br i1 %2855, label %2735, label %2732

2856:                                             ; preds = %2732
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %2857

2857:                                             ; preds = %2856, %2732
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br i1 %2314, label %2859, label %2858

2858:                                             ; preds = %2857
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %2859

2859:                                             ; preds = %2857, %2858
  %2860 = or i64 %2274, 1
  %2861 = icmp slt i64 %2860, %236
  br i1 %2861, label %2862, label %3436

2862:                                             ; preds = %2859
  %2863 = sdiv i64 %2860, %198
  %2864 = mul nsw i64 %2863, %198
  %2865 = sub nsw i64 %2860, %2864
  %2866 = add nsw i64 %2863, %351
  %2867 = mul nsw i64 %2866, %160
  %2868 = sub nsw i64 %87, %2867
  %2869 = icmp sgt i64 %2868, %160
  %2870 = select i1 %2869, i64 %160, i64 %2868
  %2871 = icmp sgt i64 %2870, 0
  %2872 = select i1 %2871, i64 %2870, i64 0
  %2873 = add nsw i64 %2865, %752
  %2874 = add nsw i64 %2873, 1
  %2875 = mul nsw i64 %2874, %177
  %2876 = icmp slt i64 %2875, %240
  %2877 = select i1 %2876, i64 %2875, i64 %240
  %2878 = shl nsw i64 %2877, 4
  %2879 = mul nsw i64 %2873, %177
  %2880 = shl nsw i64 %2879, 4
  %2881 = sub nsw i64 %2878, %2880
  %2882 = sub nsw i64 %240, %2879
  %2883 = icmp sgt i64 %2882, %177
  %2884 = select i1 %2883, i64 %177, i64 %2882
  %2885 = icmp sgt i64 %2884, 0
  %2886 = select i1 %2885, i64 %2884, i64 0
  %2887 = sub nsw i64 %2880, %2260
  %2888 = freeze i64 %2887
  %2889 = freeze i64 %172
  %2890 = sdiv i64 %2888, %2889
  %2891 = mul i64 %2890, %2889
  %2892 = sub i64 %2888, %2891
  %2893 = sub nsw i64 %120, %2880
  %2894 = icmp slt i64 %178, %2893
  %2895 = select i1 %2894, i64 %178, i64 %2893
  %2896 = icmp sgt i64 %2895, 0
  %2897 = select i1 %2896, i64 %2895, i64 0
  br i1 %656, label %2898, label %2933

2898:                                             ; preds = %2862
  %2899 = mul nsw i64 %2892, %150
  %2900 = sub nsw i64 %2899, %244
  %2901 = mul nsw i64 %2890, %301
  %2902 = sub nsw i64 %2901, %2268
  %2903 = icmp slt i64 %2872, 2
  %2904 = icmp slt i64 %2870, 2
  %2905 = and i1 %2904, %2903
  %2906 = mul i64 %2863, %160
  %2907 = trunc i64 %2872 to i8
  %2908 = icmp sgt i64 %2870, 1
  %2909 = or i1 %658, %2908
  %2910 = shl i64 %2870, 8
  %2911 = trunc i64 %2900 to i16
  %2912 = trunc i64 %2902 to i16
  %2913 = trunc i64 %2890 to i32
  %2914 = trunc i64 %2892 to i32
  %2915 = add nsw i64 %2886, -1
  %2916 = icmp sgt i64 %2886, 1
  %2917 = trunc i64 %2886 to i8
  %2918 = and i1 %2871, %2885
  %2919 = trunc i64 %2886 to i16
  %2920 = shl i16 %2919, 4
  %2921 = trunc i64 %2872 to i16
  %2922 = shl i16 %2921, 4
  %2923 = icmp sgt i64 %2886, 4
  %2924 = icmp sgt i64 %2872, 1
  %2925 = icmp sgt i64 %2886, 2
  %2926 = icmp sgt i64 %2872, 2
  %2927 = and i1 %2924, %2923
  %2928 = and i1 %2926, %2925
  %2929 = or i1 %2927, %2928
  %2930 = and i1 %2924, %2923
  %2931 = and i1 %2926, %2925
  %2932 = or i1 %2930, %2931
  br label %2978

2933:                                             ; preds = %3312, %2862
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %672, label %2934, label %3436

2934:                                             ; preds = %2933
  %2935 = icmp sgt i64 %2881, 1048559
  %2936 = shl i64 %2881, 4
  %2937 = and i64 %2886, 72057594037927935
  %2938 = shl nuw nsw i64 %2937, 8
  %2939 = sub nsw i64 %2936, %2938
  %2940 = icmp slt i64 %2939, -15
  %2941 = trunc i64 %2886 to i16
  %2942 = sdiv i64 %2939, 256
  %2943 = trunc i64 %2942 to i16
  %2944 = shl nuw nsw i64 %2937, 4
  %2945 = sub nsw i64 %2881, %2944
  %2946 = trunc i64 %2945 to i16
  %2947 = sub nsw i64 %2936, %254
  %2948 = icmp slt i64 %2947, -15
  %2949 = sdiv i64 %2947, 256
  %2950 = trunc i64 %2949 to i16
  %2951 = sub nsw i64 %2881, %255
  %2952 = trunc i64 %2951 to i16
  %2953 = icmp sgt i64 %2866, %188
  %2954 = icmp sgt i64 %2873, %193
  %2955 = or i1 %2953, %2954
  %2956 = or i1 %2269, %2955
  %2957 = icmp sgt i64 %2881, 65534
  %2958 = sub nsw i64 %120, %2897
  %2959 = sub nsw i64 %2881, %2897
  %2960 = shl nsw i64 %2879, 8
  %2961 = trunc i64 %2897 to i16
  %2962 = trunc i64 %2959 to i16
  %2963 = trunc i64 %2958 to i16
  %2964 = icmp slt i64 %2881, 65535
  %2965 = and i1 %680, %2964
  %2966 = and i1 %681, %2965
  %2967 = sub nsw i64 %2881, %178
  %2968 = icmp slt i64 %2967, 0
  %2969 = trunc i64 %2967 to i16
  %2970 = or i1 %2935, %2940
  %2971 = or i1 %2935, %2948
  %2972 = or i1 %677, %2957
  %2973 = or i64 %2958, %2959
  %2974 = icmp slt i64 %2973, 0
  %2975 = or i1 %2974, %2972
  %2976 = xor i1 %2966, true
  %2977 = or i1 %2968, %2976
  br label %3315

2978:                                             ; preds = %2898, %3312
  %2979 = phi i64 [ 0, %2898 ], [ %3313, %3312 ]
  %2980 = shl nuw nsw i64 %2979, 1
  %2981 = sdiv i64 %2980, %126
  %2982 = mul nsw i64 %2981, %126
  %2983 = mul nsw i64 %2980, %122
  %2984 = sub nsw i64 %94, %2983
  %2985 = icmp sgt i64 %2984, %122
  %2986 = select i1 %2985, i64 %122, i64 %2984
  %2987 = icmp sgt i64 %2986, 0
  %2988 = select i1 %2987, i64 %2986, i64 0
  %2989 = freeze i64 %2983
  %2990 = freeze i64 %166
  %2991 = sdiv i64 %2989, %2990
  %2992 = mul i64 %2991, %2990
  %2993 = sub i64 %2989, %2992
  %2994 = sdiv i64 %2993, %93
  %2995 = srem i64 %2983, %93
  %2996 = icmp eq i64 %2979, 0
  br i1 %2996, label %2998, label %2997

2997:                                             ; preds = %2978
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %2998

2998:                                             ; preds = %2978, %2997
  %2999 = and i1 %2869, %2985
  br i1 %2999, label %3000, label %3023

3000:                                             ; preds = %2998
  br i1 %2909, label %3007, label %3001

3001:                                             ; preds = %3000
  %3002 = mul nsw i64 %2983, %358
  %3003 = add i64 %2906, %3002
  %3004 = trunc i64 %3003 to i32
  %3005 = shl i32 %3004, 8
  %3006 = getelementptr inbounds i16, i16* %284, i32 %3005
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %3006, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %3047

3007:                                             ; preds = %3000
  br i1 %693, label %3047, label %3008

3008:                                             ; preds = %3007, %3008
  %3009 = phi i64 [ %3021, %3008 ], [ 0, %3007 ]
  %3010 = mul i64 %2910, %3009
  %3011 = add nsw i64 %3010, %248
  %3012 = trunc i64 %3011 to i32
  %3013 = getelementptr inbounds i16, i16* %328, i32 %3012
  %3014 = add i64 %3009, %2983
  %3015 = mul i64 %3014, %358
  %3016 = add i64 %3015, %2867
  %3017 = shl i64 %3016, 8
  %3018 = add i64 %663, %3017
  %3019 = trunc i64 %3018 to i32
  %3020 = getelementptr inbounds i16, i16* %284, i32 %3019
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3013, i16* %3020, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %3021 = add nuw nsw i64 %3009, 1
  %3022 = icmp slt i64 %3021, %122
  br i1 %3022, label %3008, label %3047

3023:                                             ; preds = %2998
  %3024 = and i1 %2871, %2987
  br i1 %3024, label %3025, label %3047

3025:                                             ; preds = %3023
  br i1 %2905, label %3026, label %3033

3026:                                             ; preds = %3025
  %3027 = mul nsw i64 %2983, %358
  %3028 = add i64 %2906, %3027
  %3029 = trunc i64 %3028 to i32
  %3030 = shl i32 %3029, 8
  %3031 = getelementptr inbounds i16, i16* %284, i32 %3030
  %3032 = trunc i64 %2988 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %3031, i16 zeroext 0, i8 zeroext %3032, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %3047

3033:                                             ; preds = %3025, %3033
  %3034 = phi i64 [ %3045, %3033 ], [ 0, %3025 ]
  %3035 = mul nsw i64 %3034, %2870
  %3036 = trunc i64 %3035 to i32
  %3037 = shl i32 %3036, 8
  %3038 = getelementptr inbounds i16, i16* %328, i32 %3037
  %3039 = add i64 %3034, %2983
  %3040 = mul i64 %3039, %358
  %3041 = add i64 %2906, %3040
  %3042 = trunc i64 %3041 to i32
  %3043 = shl i32 %3042, 8
  %3044 = getelementptr inbounds i16, i16* %284, i32 %3043
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3038, i16* %3044, i16 zeroext 0, i8 zeroext %2907, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %3045 = add nuw nsw i64 %3034, 1
  %3046 = icmp ult i64 %3045, %2988
  br i1 %3046, label %3033, label %3047

3047:                                             ; preds = %3033, %3008, %3007, %3023, %3026, %3001
  %3048 = and i1 %2885, %2987
  %3049 = and i1 %792, %3048
  br i1 %3049, label %3050, label %3121

3050:                                             ; preds = %3047
  %3051 = trunc i64 %2995 to i8
  %3052 = trunc i64 %2994 to i8
  %3053 = trunc i64 %2991 to i16
  %3054 = icmp slt i64 %2988, %2886
  %3055 = trunc i64 %2988 to i8
  %3056 = select i1 %3054, i8 %3055, i8 1
  %3057 = zext i1 %3054 to i8
  %3058 = select i1 %3054, i64 %2886, i64 %2988
  %3059 = trunc i64 %3058 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %312, i8 zeroext %3051, i8 zeroext %3052, i16 signext %2911, i16 signext %2912, i16 zeroext %3053, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %3056, i8 zeroext %3057, i8 zeroext %3059, i32 0)
  %3060 = add nuw nsw i64 %2988, %2886
  %3061 = icmp eq i64 %3060, 2
  br i1 %3061, label %3121, label %3062

3062:                                             ; preds = %3050
  br i1 %3054, label %3091, label %3063

3063:                                             ; preds = %3062
  br i1 %2916, label %3064, label %3121

3064:                                             ; preds = %3063, %3064
  %3065 = phi i32 [ %3074, %3064 ], [ %2913, %3063 ]
  %3066 = phi i32 [ %3076, %3064 ], [ %2914, %3063 ]
  %3067 = phi i64 [ %3077, %3064 ], [ 0, %3063 ]
  %3068 = add i32 %3066, %669
  %3069 = icmp slt i32 %170, %3068
  %3070 = zext i32 %3065 to i64
  %3071 = add nsw i64 %174, %3070
  %3072 = zext i1 %3069 to i64
  %3073 = add i64 %3071, %3072
  %3074 = trunc i64 %3073 to i32
  %3075 = select i1 %3069, i32 %670, i32 0
  %3076 = sub i32 %3068, %3075
  %3077 = add nuw nsw i64 %3067, 1
  %3078 = mul nuw nsw i64 %3077, %2988
  %3079 = trunc i64 %3078 to i32
  %3080 = shl i32 %3079, 8
  %3081 = getelementptr inbounds i16, i16* %331, i32 %3080
  %3082 = mul nsw i32 %3076, %39
  %3083 = zext i32 %3082 to i64
  %3084 = sub i64 %3083, %244
  %3085 = trunc i64 %3084 to i16
  %3086 = mul nsw i32 %36, %3074
  %3087 = zext i32 %3086 to i64
  %3088 = sub i64 %3087, %2268
  %3089 = trunc i64 %3088 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %3081, i16* %312, i8 zeroext %3051, i8 zeroext %3052, i16 signext %3085, i16 signext %3089, i16 zeroext %3053, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %3055, i32 0)
  %3090 = icmp slt i64 %3077, %2915
  br i1 %3090, label %3064, label %3121

3091:                                             ; preds = %3062
  %3092 = add nsw i64 %2988, -1
  %3093 = icmp sgt i64 %2988, 1
  br i1 %3093, label %3094, label %3121

3094:                                             ; preds = %3091
  %3095 = trunc i64 %2991 to i32
  %3096 = trunc i64 %2995 to i32
  %3097 = trunc i64 %2994 to i32
  br label %3098

3098:                                             ; preds = %3094, %3098
  %3099 = phi i32 [ %3111, %3098 ], [ %3097, %3094 ]
  %3100 = phi i32 [ %3107, %3098 ], [ %3096, %3094 ]
  %3101 = phi i32 [ %3110, %3098 ], [ %3095, %3094 ]
  %3102 = phi i64 [ %3119, %3098 ], [ 0, %3094 ]
  %3103 = add nsw i32 %3100, 1
  %3104 = icmp eq i32 %3103, %27
  %3105 = zext i1 %3104 to i32
  %3106 = add nsw i32 %3099, %3105
  %3107 = select i1 %3104, i32 0, i32 %3103
  %3108 = icmp eq i32 %3106, %24
  %3109 = zext i1 %3108 to i32
  %3110 = add nsw i32 %3101, %3109
  %3111 = select i1 %3108, i32 0, i32 %3106
  %3112 = trunc i64 %3102 to i32
  %3113 = shl i32 %3112, 8
  %3114 = add i32 %3113, 256
  %3115 = getelementptr inbounds i16, i16* %331, i32 %3114
  %3116 = trunc i32 %3107 to i8
  %3117 = trunc i32 %3111 to i8
  %3118 = trunc i32 %3110 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %3115, i16* %312, i8 zeroext %3116, i8 zeroext %3117, i16 signext %2911, i16 signext %2912, i16 zeroext %3118, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %3055, i8 zeroext 1, i8 zeroext %2917, i32 0)
  %3119 = add nuw nsw i64 %3102, 1
  %3120 = icmp slt i64 %3119, %3092
  br i1 %3120, label %3098, label %3121

3121:                                             ; preds = %3064, %3098, %3063, %3091, %3050, %3047
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %3122 = icmp sle i64 %2980, %123
  %3123 = and i1 %792, %3122
  %3124 = and i1 %2918, %2987
  %3125 = and i1 %3123, %3124
  br i1 %3125, label %3126, label %3142

3126:                                             ; preds = %3121
  %3127 = icmp sgt i64 %94, %2983
  %3128 = shl nsw i64 %2983, 4
  %3129 = sub nsw i64 %249, %3128
  %3130 = sub nsw i64 %3128, %249
  %3131 = select i1 %3127, i64 %3129, i64 %3130
  %3132 = icmp sgt i64 %3131, 0
  br i1 %3132, label %3133, label %3142

3133:                                             ; preds = %3126
  %3134 = shl nsw i64 %2988, 4
  %3135 = icmp slt i64 %3134, %3131
  %3136 = select i1 %3135, i64 %3134, i64 %3131
  %3137 = trunc i64 %3136 to i16
  %3138 = icmp eq i64 %2981, 0
  %3139 = icmp eq i64 %2980, %2982
  %3140 = and i1 %3138, %3139
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %331, i16* %328, i16 zeroext %2920, i16 zeroext %3137, i16 zeroext %2922, i1 zeroext %3140)
  br i1 %2929, label %3142, label %3141

3141:                                             ; preds = %3133
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %3142

3142:                                             ; preds = %3133, %3121, %3141, %3126
  %3143 = icmp slt i64 %2979, %250
  %3144 = and i1 %671, %3143
  br i1 %3144, label %3145, label %3146

3145:                                             ; preds = %3142
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %3146

3146:                                             ; preds = %3145, %3142
  br i1 %2996, label %3148, label %3147

3147:                                             ; preds = %3146
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %3148

3148:                                             ; preds = %3146, %3147
  %3149 = or i64 %2980, 1
  %3150 = icmp slt i64 %3149, %245
  br i1 %3150, label %3151, label %3310

3151:                                             ; preds = %3148
  %3152 = sdiv i64 %3149, %126
  %3153 = mul nsw i64 %3152, %126
  %3154 = mul nsw i64 %3149, %122
  %3155 = sub nsw i64 %94, %3154
  %3156 = icmp sgt i64 %3155, %122
  %3157 = select i1 %3156, i64 %122, i64 %3155
  %3158 = icmp sgt i64 %3157, 0
  %3159 = select i1 %3158, i64 %3157, i64 0
  %3160 = freeze i64 %3154
  %3161 = freeze i64 %166
  %3162 = sdiv i64 %3160, %3161
  %3163 = mul i64 %3162, %3161
  %3164 = sub i64 %3160, %3163
  %3165 = sdiv i64 %3164, %93
  %3166 = srem i64 %3154, %93
  %3167 = and i1 %2869, %3156
  br i1 %3167, label %3168, label %3191

3168:                                             ; preds = %3151
  br i1 %2909, label %3175, label %3169

3169:                                             ; preds = %3168
  %3170 = mul nsw i64 %3154, %358
  %3171 = add i64 %2906, %3170
  %3172 = trunc i64 %3171 to i32
  %3173 = shl i32 %3172, 8
  %3174 = getelementptr inbounds i16, i16* %284, i32 %3173
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %3174, i16 zeroext 0, i8 zeroext %659, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %3215

3175:                                             ; preds = %3168
  br i1 %694, label %3215, label %3176

3176:                                             ; preds = %3175, %3176
  %3177 = phi i64 [ %3189, %3176 ], [ 0, %3175 ]
  %3178 = mul i64 %2910, %3177
  %3179 = add nsw i64 %3178, %248
  %3180 = trunc i64 %3179 to i32
  %3181 = getelementptr inbounds i16, i16* %332, i32 %3180
  %3182 = add i64 %3177, %3154
  %3183 = mul i64 %3182, %358
  %3184 = add i64 %3183, %2867
  %3185 = shl i64 %3184, 8
  %3186 = add i64 %663, %3185
  %3187 = trunc i64 %3186 to i32
  %3188 = getelementptr inbounds i16, i16* %284, i32 %3187
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3181, i16* %3188, i16 zeroext 0, i8 zeroext %664, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %3189 = add nuw nsw i64 %3177, 1
  %3190 = icmp slt i64 %3189, %122
  br i1 %3190, label %3176, label %3215

3191:                                             ; preds = %3151
  %3192 = and i1 %2871, %3158
  br i1 %3192, label %3193, label %3215

3193:                                             ; preds = %3191
  br i1 %2905, label %3194, label %3201

3194:                                             ; preds = %3193
  %3195 = mul nsw i64 %3154, %358
  %3196 = add i64 %2906, %3195
  %3197 = trunc i64 %3196 to i32
  %3198 = shl i32 %3197, 8
  %3199 = getelementptr inbounds i16, i16* %284, i32 %3198
  %3200 = trunc i64 %3159 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %3199, i16 zeroext 0, i8 zeroext %3200, i16 zeroext %657, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %3215

3201:                                             ; preds = %3193, %3201
  %3202 = phi i64 [ %3213, %3201 ], [ 0, %3193 ]
  %3203 = mul nsw i64 %3202, %2870
  %3204 = trunc i64 %3203 to i32
  %3205 = shl i32 %3204, 8
  %3206 = getelementptr inbounds i16, i16* %332, i32 %3205
  %3207 = add i64 %3202, %3154
  %3208 = mul i64 %3207, %358
  %3209 = add i64 %2906, %3208
  %3210 = trunc i64 %3209 to i32
  %3211 = shl i32 %3210, 8
  %3212 = getelementptr inbounds i16, i16* %284, i32 %3211
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3206, i16* %3212, i16 zeroext 0, i8 zeroext %2907, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %3213 = add nuw nsw i64 %3202, 1
  %3214 = icmp ult i64 %3213, %3159
  br i1 %3214, label %3201, label %3215

3215:                                             ; preds = %3201, %3176, %3175, %3191, %3194, %3169
  %3216 = and i1 %2885, %3158
  %3217 = and i1 %792, %3216
  br i1 %3217, label %3218, label %3289

3218:                                             ; preds = %3215
  %3219 = trunc i64 %3166 to i8
  %3220 = trunc i64 %3165 to i8
  %3221 = trunc i64 %3162 to i16
  %3222 = icmp slt i64 %3159, %2886
  %3223 = trunc i64 %3159 to i8
  %3224 = select i1 %3222, i8 %3223, i8 1
  %3225 = zext i1 %3222 to i8
  %3226 = select i1 %3222, i64 %2886, i64 %3159
  %3227 = trunc i64 %3226 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %312, i8 zeroext %3219, i8 zeroext %3220, i16 signext %2911, i16 signext %2912, i16 zeroext %3221, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %3224, i8 zeroext %3225, i8 zeroext %3227, i32 0)
  %3228 = add nuw nsw i64 %3159, %2886
  %3229 = icmp eq i64 %3228, 2
  br i1 %3229, label %3289, label %3230

3230:                                             ; preds = %3218
  br i1 %3222, label %3259, label %3231

3231:                                             ; preds = %3230
  br i1 %2916, label %3232, label %3289

3232:                                             ; preds = %3231, %3232
  %3233 = phi i32 [ %3242, %3232 ], [ %2913, %3231 ]
  %3234 = phi i32 [ %3244, %3232 ], [ %2914, %3231 ]
  %3235 = phi i64 [ %3245, %3232 ], [ 0, %3231 ]
  %3236 = add i32 %3234, %669
  %3237 = icmp slt i32 %170, %3236
  %3238 = zext i32 %3233 to i64
  %3239 = add nsw i64 %174, %3238
  %3240 = zext i1 %3237 to i64
  %3241 = add i64 %3239, %3240
  %3242 = trunc i64 %3241 to i32
  %3243 = select i1 %3237, i32 %670, i32 0
  %3244 = sub i32 %3236, %3243
  %3245 = add nuw nsw i64 %3235, 1
  %3246 = mul nuw nsw i64 %3245, %3159
  %3247 = trunc i64 %3246 to i32
  %3248 = shl i32 %3247, 8
  %3249 = getelementptr inbounds i16, i16* %333, i32 %3248
  %3250 = mul nsw i32 %3244, %39
  %3251 = zext i32 %3250 to i64
  %3252 = sub i64 %3251, %244
  %3253 = trunc i64 %3252 to i16
  %3254 = mul nsw i32 %36, %3242
  %3255 = zext i32 %3254 to i64
  %3256 = sub i64 %3255, %2268
  %3257 = trunc i64 %3256 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %3249, i16* %312, i8 zeroext %3219, i8 zeroext %3220, i16 signext %3253, i16 signext %3257, i16 zeroext %3221, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %3223, i32 0)
  %3258 = icmp slt i64 %3245, %2915
  br i1 %3258, label %3232, label %3289

3259:                                             ; preds = %3230
  %3260 = add nsw i64 %3159, -1
  %3261 = icmp sgt i64 %3159, 1
  br i1 %3261, label %3262, label %3289

3262:                                             ; preds = %3259
  %3263 = trunc i64 %3162 to i32
  %3264 = trunc i64 %3166 to i32
  %3265 = trunc i64 %3165 to i32
  br label %3266

3266:                                             ; preds = %3262, %3266
  %3267 = phi i32 [ %3279, %3266 ], [ %3265, %3262 ]
  %3268 = phi i32 [ %3275, %3266 ], [ %3264, %3262 ]
  %3269 = phi i32 [ %3278, %3266 ], [ %3263, %3262 ]
  %3270 = phi i64 [ %3287, %3266 ], [ 0, %3262 ]
  %3271 = add nsw i32 %3268, 1
  %3272 = icmp eq i32 %3271, %27
  %3273 = zext i1 %3272 to i32
  %3274 = add nsw i32 %3267, %3273
  %3275 = select i1 %3272, i32 0, i32 %3271
  %3276 = icmp eq i32 %3274, %24
  %3277 = zext i1 %3276 to i32
  %3278 = add nsw i32 %3269, %3277
  %3279 = select i1 %3276, i32 0, i32 %3274
  %3280 = trunc i64 %3270 to i32
  %3281 = shl i32 %3280, 8
  %3282 = add i32 %3281, 256
  %3283 = getelementptr inbounds i16, i16* %333, i32 %3282
  %3284 = trunc i32 %3275 to i8
  %3285 = trunc i32 %3279 to i8
  %3286 = trunc i32 %3278 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %3283, i16* %312, i8 zeroext %3284, i8 zeroext %3285, i16 signext %2911, i16 signext %2912, i16 zeroext %3286, i8 zeroext %665, i8 zeroext %666, i8 zeroext %667, i8 zeroext %668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %3223, i8 zeroext 1, i8 zeroext %2917, i32 0)
  %3287 = add nuw nsw i64 %3270, 1
  %3288 = icmp slt i64 %3287, %3260
  br i1 %3288, label %3266, label %3289

3289:                                             ; preds = %3232, %3266, %3231, %3259, %3218, %3215
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %3290 = icmp sle i64 %3149, %123
  %3291 = and i1 %792, %3290
  %3292 = and i1 %2918, %3158
  %3293 = and i1 %3291, %3292
  br i1 %3293, label %3294, label %3310

3294:                                             ; preds = %3289
  %3295 = icmp sgt i64 %94, %3154
  %3296 = shl nsw i64 %3154, 4
  %3297 = sub nsw i64 %249, %3296
  %3298 = sub nsw i64 %3296, %249
  %3299 = select i1 %3295, i64 %3297, i64 %3298
  %3300 = icmp sgt i64 %3299, 0
  br i1 %3300, label %3301, label %3310

3301:                                             ; preds = %3294
  %3302 = shl nsw i64 %3159, 4
  %3303 = icmp slt i64 %3302, %3299
  %3304 = select i1 %3303, i64 %3302, i64 %3299
  %3305 = trunc i64 %3304 to i16
  %3306 = icmp eq i64 %3152, 0
  %3307 = icmp eq i64 %3149, %3153
  %3308 = and i1 %3306, %3307
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %333, i16* %332, i16 zeroext %2920, i16 zeroext %3305, i16 zeroext %2922, i1 zeroext %3308)
  br i1 %2932, label %3310, label %3309

3309:                                             ; preds = %3301
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %3310

3310:                                             ; preds = %3301, %3289, %3294, %3309, %3148
  br i1 %3144, label %3311, label %3312

3311:                                             ; preds = %3310
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %3312

3312:                                             ; preds = %3311, %3310
  %3313 = add nuw nsw i64 %2979, 1
  %3314 = icmp slt i64 %3313, %247
  br i1 %3314, label %2978, label %2933

3315:                                             ; preds = %2934, %3433
  %3316 = phi i64 [ 0, %2934 ], [ %3434, %3433 ]
  %3317 = mul nsw i64 %3316, %673
  %3318 = sub nsw i64 %87, %3317
  %3319 = sub i64 %3318, %2867
  %3320 = icmp sgt i64 %3319, %673
  %3321 = select i1 %3320, i64 %673, i64 %3319
  %3322 = icmp sgt i64 %3321, 0
  %3323 = select i1 %3322, i64 %3321, i64 0
  %3324 = icmp eq i64 %3316, 0
  br i1 %3324, label %3326, label %3325

3325:                                             ; preds = %3315
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %3326

3326:                                             ; preds = %3315, %3325
  br i1 %792, label %3327, label %3428

3327:                                             ; preds = %3326
  %3328 = and i1 %2883, %3320
  br i1 %3328, label %3329, label %3349

3329:                                             ; preds = %3327
  br i1 %2971, label %3335, label %3330

3330:                                             ; preds = %3329
  %3331 = mul nsw i64 %3317, %2881
  %3332 = trunc i64 %3331 to i32
  %3333 = shl i32 %3332, 4
  %3334 = getelementptr inbounds float, float* %337, i32 %3333
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %3334, i8 zeroext 0, i16 zeroext %676, i16 zeroext %675, i16 zeroext %2950, i16 zeroext %2952, i32 1)
  br label %3370

3335:                                             ; preds = %3329
  br i1 %674, label %3336, label %3370

3336:                                             ; preds = %3335
  %3337 = mul nsw i64 %3317, %2881
  %3338 = shl nsw i64 %3337, 4
  br label %3339

3339:                                             ; preds = %3336, %3339
  %3340 = phi i64 [ 0, %3336 ], [ %3347, %3339 ]
  %3341 = mul i64 %2936, %3340
  %3342 = trunc i64 %3341 to i32
  %3343 = getelementptr inbounds i16, i16* %336, i32 %3342
  %3344 = add nsw i64 %3341, %3338
  %3345 = trunc i64 %3344 to i32
  %3346 = getelementptr inbounds float, float* %337, i32 %3345
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %3343, float* %3346, i8 zeroext 0, i16 zeroext 1, i16 zeroext %675, i16 zeroext 0, i16 zeroext 0, i32 1)
  %3347 = add nuw nsw i64 %3340, 1
  %3348 = icmp slt i64 %3347, %673
  br i1 %3348, label %3339, label %3370

3349:                                             ; preds = %3327
  %3350 = and i1 %2885, %3322
  br i1 %3350, label %3351, label %3370

3351:                                             ; preds = %3349
  %3352 = mul nsw i64 %3317, %2881
  br i1 %2970, label %3358, label %3353

3353:                                             ; preds = %3351
  %3354 = trunc i64 %3352 to i32
  %3355 = shl i32 %3354, 4
  %3356 = getelementptr inbounds float, float* %337, i32 %3355
  %3357 = trunc i64 %3323 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %3356, i8 zeroext 0, i16 zeroext %3357, i16 zeroext %2941, i16 zeroext %2943, i16 zeroext %2946, i32 1)
  br label %3370

3358:                                             ; preds = %3351
  %3359 = shl nsw i64 %3352, 4
  br label %3360

3360:                                             ; preds = %3358, %3360
  %3361 = phi i64 [ 0, %3358 ], [ %3368, %3360 ]
  %3362 = mul i64 %2936, %3361
  %3363 = trunc i64 %3362 to i32
  %3364 = getelementptr inbounds i16, i16* %336, i32 %3363
  %3365 = add nsw i64 %3362, %3359
  %3366 = trunc i64 %3365 to i32
  %3367 = getelementptr inbounds float, float* %337, i32 %3366
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %3364, float* %3367, i8 zeroext 0, i16 zeroext 1, i16 zeroext %2941, i16 zeroext 0, i16 zeroext 0, i32 1)
  %3368 = add nuw nsw i64 %3361, 1
  %3369 = icmp ult i64 %3368, %3323
  br i1 %3369, label %3360, label %3370

3370:                                             ; preds = %3360, %3339, %3335, %3330, %3353, %3349
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %2956, label %3429, label %3371

3371:                                             ; preds = %3370
  %3372 = and i1 %2894, %3320
  br i1 %3372, label %3373, label %3401

3373:                                             ; preds = %3371
  br i1 %2977, label %3382, label %3374

3374:                                             ; preds = %3373
  %3375 = add i64 %3317, %2867
  %3376 = add i64 %3375, %2270
  %3377 = mul i64 %678, %3376
  %3378 = add nsw i64 %3377, %2960
  %3379 = trunc i64 %3378 to i32
  %3380 = getelementptr inbounds i16, i16* %2, i32 %3379
  %3381 = bitcast i16* %3380 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %3381, i8* %679, i8 zeroext 0, i16 zeroext %676, i16 zeroext %682, i16 zeroext %2969, i16 zeroext %683)
  br label %3429

3382:                                             ; preds = %3373
  br i1 %674, label %3383, label %3429

3383:                                             ; preds = %3382
  %3384 = add i64 %3317, %2867
  %3385 = add i64 %3384, %2270
  br label %3386

3386:                                             ; preds = %3383, %3386
  %3387 = phi i64 [ 0, %3383 ], [ %3399, %3386 ]
  %3388 = add i64 %3385, %3387
  %3389 = mul i64 %678, %3388
  %3390 = add i64 %3389, %2960
  %3391 = trunc i64 %3390 to i32
  %3392 = getelementptr inbounds i16, i16* %2, i32 %3391
  %3393 = bitcast i16* %3392 to i8*
  %3394 = mul nsw i64 %3387, %2881
  %3395 = trunc i64 %3394 to i32
  %3396 = shl i32 %3395, 4
  %3397 = getelementptr inbounds i16, i16* %336, i32 %3396
  %3398 = bitcast i16* %3397 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %3393, i8* %3398, i8 zeroext 0, i16 zeroext 1, i16 zeroext %682, i16 zeroext 0, i16 zeroext 0)
  %3399 = add nuw nsw i64 %3387, 1
  %3400 = icmp slt i64 %3399, %673
  br i1 %3400, label %3386, label %3429

3401:                                             ; preds = %3371
  %3402 = and i1 %2896, %3322
  br i1 %3402, label %3403, label %3429

3403:                                             ; preds = %3401
  %3404 = add i64 %3317, %2867
  %3405 = add i64 %3404, %2270
  br i1 %2975, label %3413, label %3406

3406:                                             ; preds = %3403
  %3407 = mul i64 %678, %3405
  %3408 = add nsw i64 %3407, %2960
  %3409 = trunc i64 %3408 to i32
  %3410 = getelementptr inbounds i16, i16* %2, i32 %3409
  %3411 = bitcast i16* %3410 to i8*
  %3412 = trunc i64 %3323 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %3411, i8* %679, i8 zeroext 0, i16 zeroext %3412, i16 zeroext %2961, i16 zeroext %2962, i16 zeroext %2963)
  br label %3429

3413:                                             ; preds = %3403, %3413
  %3414 = phi i64 [ %3426, %3413 ], [ 0, %3403 ]
  %3415 = add i64 %3405, %3414
  %3416 = mul i64 %678, %3415
  %3417 = add i64 %3416, %2960
  %3418 = trunc i64 %3417 to i32
  %3419 = getelementptr inbounds i16, i16* %2, i32 %3418
  %3420 = bitcast i16* %3419 to i8*
  %3421 = mul nsw i64 %3414, %2881
  %3422 = trunc i64 %3421 to i32
  %3423 = shl i32 %3422, 4
  %3424 = getelementptr inbounds i16, i16* %336, i32 %3423
  %3425 = bitcast i16* %3424 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %3420, i8* %3425, i8 zeroext 0, i16 zeroext 1, i16 zeroext %2961, i16 zeroext 0, i16 zeroext 0)
  %3426 = add nuw nsw i64 %3414, 1
  %3427 = icmp ult i64 %3426, %3323
  br i1 %3427, label %3413, label %3429

3428:                                             ; preds = %3326
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %3429

3429:                                             ; preds = %3413, %3386, %3382, %3370, %3428, %3374, %3406, %3401
  %3430 = icmp slt i64 %3316, %258
  %3431 = and i1 %684, %3430
  br i1 %3431, label %3432, label %3433

3432:                                             ; preds = %3429
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %3433

3433:                                             ; preds = %3432, %3429
  %3434 = add nuw nsw i64 %3316, 1
  %3435 = icmp slt i64 %3434, %257
  br i1 %3435, label %3315, label %3436

3436:                                             ; preds = %3433, %2933, %2859
  br i1 %2734, label %3437, label %3438

3437:                                             ; preds = %3436
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %3438

3438:                                             ; preds = %3437, %3436
  %3439 = add nuw nsw i64 %2273, 1
  %3440 = icmp slt i64 %3439, %238
  br i1 %3440, label %2272, label %2271

3441:                                             ; preds = %2271
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 4, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %3442

3442:                                             ; preds = %3441, %2271
  %3443 = add nuw nsw i64 %699, 1
  %3444 = icmp slt i64 %3443, %235
  br i1 %3444, label %698, label %695

3445:                                             ; preds = %695
  %3446 = add nsw i64 %460, %184
  %3447 = add nsw i64 %461, %200
  %3448 = add nsw i64 %3447, 1
  %3449 = mul i64 %464, %3448
  %3450 = add nsw i64 %3449, -1
  %3451 = freeze i64 %3450
  %3452 = freeze i64 %105
  %3453 = sdiv i64 %3451, %3452
  %3454 = mul i64 %3453, %3452
  %3455 = sub i64 %3451, %3454
  %3456 = ashr i64 %3455, 63
  %3457 = add nsw i64 %3456, %3453
  %3458 = mul nsw i64 %3457, %301
  %3459 = add nsw i64 %3458, %101
  %3460 = add nsw i64 %3459, 1
  %3461 = sub nsw i64 %3460, %477
  %3462 = icmp slt i64 %3461, %304
  %3463 = select i1 %3462, i64 %3461, i64 %304
  %3464 = mul i64 %464, %3447
  %3465 = sdiv i64 %3464, %105
  %3466 = mul nsw i64 %3465, %301
  %3467 = sub nsw i64 %3466, %477
  %3468 = icmp sgt i64 %3467, 0
  %3469 = select i1 %3468, i64 %3467, i64 0
  %3470 = sub nsw i64 %3463, %3469
  %3471 = icmp slt i64 %3460, %203
  %3472 = select i1 %3471, i64 %3460, i64 %203
  %3473 = sub nsw i64 %3472, %3466
  %3474 = sub nsw i64 %477, %3466
  %3475 = icmp sgt i64 %3474, 0
  %3476 = select i1 %3475, i64 %3474, i64 0
  %3477 = sub i64 %3473, %3476
  %3478 = icmp sgt i64 %3477, 0
  %3479 = select i1 %3478, i64 %3477, i64 0
  %3480 = icmp sgt i64 %148, %3479
  %3481 = select i1 %3480, i64 %148, i64 %3479
  %3482 = icmp slt i64 %148, %3479
  %3483 = mul nsw i64 %3470, %158
  %3484 = shl nsw i64 %3483, 4
  %3485 = select i1 %3480, i64 %3479, i64 %148
  %3486 = select i1 %3480, i64 %204, i64 %3484
  %3487 = select i1 %3482, i64 %208, i64 %207
  %3488 = select i1 %3482, i64 %148, i64 %3485
  %3489 = select i1 %3482, i64 %3484, i64 %3486
  %3490 = select i1 %3480, i64 %3484, i64 %204
  %3491 = select i1 %3480, i64 %208, i64 %207
  %3492 = select i1 %3482, i64 %207, i64 %3491
  %3493 = select i1 %3480, i64 %3487, i64 %208
  %3494 = icmp slt i64 %3446, %181
  br i1 %3494, label %3495, label %3618

3495:                                             ; preds = %3445
  %3496 = icmp sgt i64 %148, 0
  %3497 = and i1 %3496, %3478
  %3498 = icmp sgt i64 %158, 0
  %3499 = and i1 %3498, %3497
  br i1 %3499, label %3500, label %3618

3500:                                             ; preds = %3495
  %3501 = icmp sgt i64 %3470, 0
  br i1 %3501, label %3502, label %3539

3502:                                             ; preds = %3500
  %3503 = shl i64 %3470, 16
  %3504 = icmp slt i64 %224, %156
  %3505 = select i1 %3504, i64 0, i64 %228
  %3506 = sext i32 %57 to i64
  %3507 = icmp slt i64 %3505, %3506
  %3508 = select i1 %3507, i64 %3505, i64 %3506
  %3509 = shl i64 %3508, 40
  %3510 = icmp slt i64 %3467, 0
  %3511 = sub nsw i64 0, %3467
  %3512 = sub nsw i64 %3460, %3466
  %3513 = icmp sgt i64 %3512, %3511
  %3514 = select i1 %3513, i64 %3511, i64 %3512
  %3515 = select i1 %3510, i64 %3514, i64 0
  %3516 = icmp slt i64 %3515, %477
  %3517 = select i1 %3516, i64 %3515, i64 %477
  %3518 = shl i64 %3517, 48
  %3519 = sub i64 %112, %3466
  %3520 = add i64 %3519, %3458
  %3521 = add i64 %3520, %3467
  %3522 = icmp sgt i64 %3521, %304
  %3523 = sub nsw i64 %3521, %304
  %3524 = sub nsw i64 %3459, %3466
  %3525 = icmp slt i64 %3523, %3524
  %3526 = select i1 %3525, i64 %3523, i64 %3524
  %3527 = select i1 %3522, i64 %3526, i64 0
  %3528 = sext i32 %51 to i64
  %3529 = icmp slt i64 %3527, %3528
  %3530 = select i1 %3529, i64 %3527, i64 %3528
  %3531 = shl i64 %3530, 56
  %3532 = or i64 %222, %218
  %3533 = or i64 %3532, %3509
  %3534 = or i64 %3533, %3503
  %3535 = or i64 %3534, %3518
  %3536 = or i64 %3535, %3531
  %3537 = icmp eq i64 %696, %3536
  br i1 %3537, label %3539, label %3538

3538:                                             ; preds = %3502
  tail call void @_Z11intrinsic_3y(i64 %3536)
  br label %3539

3539:                                             ; preds = %3538, %3502, %3500
  %3540 = icmp slt i64 %158, 65536
  %3541 = icmp slt i64 %3481, 4096
  %3542 = and i1 %3540, %3541
  %3543 = icmp slt i64 %3493, 1048560
  %3544 = and i1 %3542, %3543
  %3545 = icmp slt i64 %3490, 1048560
  %3546 = and i1 %3545, %3544
  %3547 = icmp sgt i64 %3481, 0
  %3548 = and i1 %3547, %3546
  br i1 %3548, label %3549, label %3583

3549:                                             ; preds = %3539
  %3550 = sub nsw i64 %3490, %204
  %3551 = icmp sgt i64 %3550, -16
  br i1 %3551, label %3552, label %3583

3552:                                             ; preds = %3549
  %3553 = sub nsw i64 %3493, %204
  %3554 = icmp sgt i64 %3553, -16
  br i1 %3554, label %3555, label %3583

3555:                                             ; preds = %3552
  %3556 = icmp sgt i64 %3488, 0
  br i1 %3556, label %3557, label %3618

3557:                                             ; preds = %3555
  %3558 = mul nsw i64 %90, %304
  %3559 = mul i64 %3558, %3446
  %3560 = sub i64 %3559, %477
  %3561 = add i64 %3560, %3466
  %3562 = mul i64 %208, %3561
  %3563 = sub i64 %3562, %229
  %3564 = trunc i64 %3481 to i16
  %3565 = trunc i64 %158 to i16
  %3566 = sdiv i64 %3553, 16
  %3567 = trunc i64 %3566 to i16
  %3568 = sdiv i64 %3550, 16
  %3569 = trunc i64 %3568 to i16
  br label %3570

3570:                                             ; preds = %3557, %3570
  %3571 = phi i64 [ 0, %3557 ], [ %3581, %3570 ]
  %3572 = mul nsw i64 %3571, %3489
  %3573 = trunc i64 %3572 to i32
  %3574 = getelementptr inbounds i16, i16* %312, i32 %3573
  %3575 = bitcast i16* %3574 to i8*
  %3576 = mul nsw i64 %3571, %3492
  %3577 = add i64 %3563, %3576
  %3578 = trunc i64 %3577 to i32
  %3579 = getelementptr inbounds i16, i16* %0, i32 %3578
  %3580 = bitcast i16* %3579 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %3575, i8* %3580, i8 zeroext 0, i16 zeroext %3564, i16 zeroext %3565, i16 zeroext %3567, i16 zeroext %3569, i32 0)
  %3581 = add nuw nsw i64 %3571, 1
  %3582 = icmp slt i64 %3581, %3488
  br i1 %3582, label %3570, label %3618

3583:                                             ; preds = %3552, %3549, %3539
  %3584 = icmp sgt i64 %3488, 0
  br i1 %3584, label %3585, label %3618

3585:                                             ; preds = %3583
  %3586 = mul nsw i64 %90, %304
  %3587 = mul i64 %3586, %3446
  %3588 = sub i64 %3587, %477
  %3589 = add i64 %3588, %3466
  %3590 = mul i64 %208, %3589
  %3591 = sub nsw i64 %231, %229
  %3592 = add i64 %3591, %3590
  %3593 = trunc i64 %232 to i16
  br label %3594

3594:                                             ; preds = %3585, %3601
  %3595 = phi i64 [ 0, %3585 ], [ %3602, %3601 ]
  br i1 %3547, label %3596, label %3601

3596:                                             ; preds = %3594
  %3597 = mul nsw i64 %3595, %3489
  %3598 = add nsw i64 %3597, %231
  %3599 = mul nsw i64 %3595, %3492
  %3600 = add i64 %3592, %3599
  br label %3604

3601:                                             ; preds = %3604, %3594
  %3602 = add nuw nsw i64 %3595, 1
  %3603 = icmp slt i64 %3602, %3488
  br i1 %3603, label %3594, label %3618

3604:                                             ; preds = %3596, %3604
  %3605 = phi i64 [ 0, %3596 ], [ %3616, %3604 ]
  %3606 = mul nsw i64 %3605, %3490
  %3607 = add nsw i64 %3598, %3606
  %3608 = trunc i64 %3607 to i32
  %3609 = getelementptr inbounds i16, i16* %312, i32 %3608
  %3610 = bitcast i16* %3609 to i8*
  %3611 = mul nsw i64 %3605, %3493
  %3612 = add i64 %3600, %3611
  %3613 = trunc i64 %3612 to i32
  %3614 = getelementptr inbounds i16, i16* %0, i32 %3613
  %3615 = bitcast i16* %3614 to i8*
  tail call void @_Z11intrinsic_8PvS_htttt5pad_t(i8* %3610, i8* %3615, i8 zeroext 0, i16 zeroext 1, i16 zeroext %3593, i16 zeroext 0, i16 zeroext 0, i32 0)
  %3616 = add nuw nsw i64 %3605, 1
  %3617 = icmp ult i64 %3616, %3481
  br i1 %3617, label %3604, label %3601

3618:                                             ; preds = %3601, %3570, %3583, %3555, %3445, %3495, %695
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 4, i32 3, i32 1)
  %3619 = add nsw i64 %460, %270
  %3620 = add nsw i64 %273, %461
  %3621 = add nsw i64 %3620, 1
  %3622 = mul i64 %464, %3621
  %3623 = add nsw i64 %3622, -1
  %3624 = mul nsw i64 %3620, %198
  %3625 = mul i64 %178, %3624
  %3626 = freeze i64 %3625
  %3627 = freeze i64 %105
  %3628 = sdiv i64 %3626, %3627
  %3629 = mul i64 %3628, %3627
  %3630 = sub i64 %3626, %3629
  %3631 = ashr i64 %3630, 63
  %3632 = add nsw i64 %3631, %3628
  %3633 = mul nsw i64 %3632, %301
  %3634 = sub nsw i64 %3633, %477
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 4, i32 3, i32 0)
  tail call void @_Z11intrinsic_76pipe_t(i32 3)
  %3635 = icmp sgt i64 %236, 0
  br i1 %3635, label %3636, label %3692

3636:                                             ; preds = %3618
  %3637 = freeze i64 %3623
  %3638 = freeze i64 %105
  %3639 = sdiv i64 %3637, %3638
  %3640 = mul i64 %3639, %3638
  %3641 = sub i64 %3637, %3640
  %3642 = ashr i64 %3641, 63
  %3643 = add nsw i64 %3642, %3639
  %3644 = mul nsw i64 %3643, %301
  %3645 = add i64 %112, %3644
  %3646 = mul nsw i64 %3632, %172
  %3647 = icmp slt i64 %3634, 0
  %3648 = sub nsw i64 0, %3634
  %3649 = sub nsw i64 %3645, %3633
  %3650 = icmp sgt i64 %3649, %3648
  %3651 = select i1 %3650, i64 %3648, i64 %3649
  %3652 = select i1 %3647, i64 %3651, i64 0
  %3653 = icmp slt i64 %3652, %477
  %3654 = select i1 %3653, i64 %3652, i64 %477
  %3655 = icmp sgt i64 %245, 0
  %3656 = trunc i64 %358 to i16
  %3657 = icmp sgt i32 %159, 1
  %3658 = trunc i32 %78 to i8
  %3659 = icmp slt i64 %164, 1
  %3660 = icmp slt i32 %78, 1
  %3661 = shl nsw i64 %357, 8
  %3662 = sub i64 %248, %3661
  %3663 = trunc i64 %164 to i8
  %3664 = icmp slt i64 %3619, %181
  %3665 = trunc i32 %39 to i8
  %3666 = trunc i32 %36 to i8
  %3667 = trunc i32 %27 to i8
  %3668 = trunc i32 %24 to i8
  %3669 = trunc i64 %176 to i32
  %3670 = trunc i64 %172 to i32
  %3671 = icmp ne i64 %247, 1
  %3672 = icmp sgt i32 %72, 0
  %3673 = sext i32 %69 to i64
  %3674 = icmp sgt i32 %69, 0
  %3675 = trunc i64 %253 to i16
  %3676 = trunc i32 %69 to i16
  %3677 = icmp sgt i64 %3620, %195
  %3678 = icmp sgt i32 %119, 65534
  %3679 = mul nsw i64 %3619, %87
  %3680 = shl nsw i64 %120, 4
  %3681 = inttoptr i32 %335 to i8*
  %3682 = icmp slt i32 %119, 65535
  %3683 = icmp sgt i64 %256, -1
  %3684 = trunc i64 %178 to i16
  %3685 = trunc i64 %256 to i16
  %3686 = icmp ne i32 %72, 1
  %3687 = icmp ne i64 %238, 1
  %3688 = or i1 %3659, %3660
  %3689 = or i1 %3659, %3660
  %3690 = or i1 %3659, %3660
  %3691 = or i1 %3659, %3660
  br label %3693

3692:                                             ; preds = %4859, %3618
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 4, i32 3, i32 1)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br i1 %697, label %4862, label %6098

3693:                                             ; preds = %3636, %4859
  %3694 = phi i64 [ 0, %3636 ], [ %4860, %4859 ]
  %3695 = shl nuw nsw i64 %3694, 1
  %3696 = sdiv i64 %3695, %198
  %3697 = mul nsw i64 %3696, %198
  %3698 = sub nsw i64 %3695, %3697
  %3699 = add nsw i64 %3696, %351
  %3700 = mul nsw i64 %3699, %160
  %3701 = sub nsw i64 %87, %3700
  %3702 = icmp sgt i64 %3701, %160
  %3703 = select i1 %3702, i64 %160, i64 %3701
  %3704 = icmp sgt i64 %3703, 0
  %3705 = select i1 %3704, i64 %3703, i64 0
  %3706 = add nsw i64 %3698, %3624
  %3707 = add nsw i64 %3706, 1
  %3708 = mul nsw i64 %3707, %177
  %3709 = icmp slt i64 %3708, %240
  %3710 = select i1 %3709, i64 %3708, i64 %240
  %3711 = shl nsw i64 %3710, 4
  %3712 = mul nsw i64 %3706, %177
  %3713 = shl nsw i64 %3712, 4
  %3714 = sub nsw i64 %3711, %3713
  %3715 = sub nsw i64 %240, %3712
  %3716 = icmp sgt i64 %3715, %177
  %3717 = select i1 %3716, i64 %177, i64 %3715
  %3718 = icmp sgt i64 %3717, 0
  %3719 = select i1 %3718, i64 %3717, i64 0
  %3720 = sub nsw i64 %3713, %3646
  %3721 = freeze i64 %3720
  %3722 = freeze i64 %172
  %3723 = sdiv i64 %3721, %3722
  %3724 = mul i64 %3723, %3722
  %3725 = sub i64 %3721, %3724
  %3726 = mul nsw i64 %3723, %301
  %3727 = sub nsw i64 %3726, %3654
  %3728 = mul nsw i64 %3725, %150
  %3729 = sub nsw i64 %3728, %244
  %3730 = sub nsw i64 %120, %3713
  %3731 = icmp slt i64 %178, %3730
  %3732 = select i1 %3731, i64 %178, i64 %3730
  %3733 = icmp sgt i64 %3732, 0
  %3734 = select i1 %3733, i64 %3732, i64 0
  %3735 = icmp eq i64 %3694, 0
  br i1 %3735, label %3737, label %3736

3736:                                             ; preds = %3693
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %3737

3737:                                             ; preds = %3693, %3736
  br i1 %3655, label %3738, label %3769

3738:                                             ; preds = %3737
  %3739 = icmp slt i64 %3705, 2
  %3740 = icmp slt i64 %3703, 2
  %3741 = and i1 %3740, %3739
  %3742 = mul i64 %3696, %160
  %3743 = trunc i64 %3705 to i8
  %3744 = icmp sgt i64 %3703, 1
  %3745 = or i1 %3657, %3744
  %3746 = shl i64 %3703, 8
  %3747 = trunc i64 %3729 to i16
  %3748 = trunc i64 %3727 to i16
  %3749 = trunc i64 %3723 to i32
  %3750 = trunc i64 %3725 to i32
  %3751 = add nsw i64 %3719, -1
  %3752 = icmp sgt i64 %3719, 1
  %3753 = trunc i64 %3719 to i8
  %3754 = and i1 %3704, %3718
  %3755 = trunc i64 %3719 to i16
  %3756 = shl i16 %3755, 4
  %3757 = trunc i64 %3705 to i16
  %3758 = shl i16 %3757, 4
  %3759 = icmp sgt i64 %3719, 4
  %3760 = icmp sgt i64 %3705, 1
  %3761 = icmp sgt i64 %3719, 2
  %3762 = icmp sgt i64 %3705, 2
  %3763 = and i1 %3760, %3759
  %3764 = and i1 %3762, %3761
  %3765 = or i1 %3763, %3764
  %3766 = and i1 %3760, %3759
  %3767 = and i1 %3762, %3761
  %3768 = or i1 %3766, %3767
  br label %3770

3769:                                             ; preds = %4104, %3737
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br i1 %3735, label %4108, label %4107

3770:                                             ; preds = %3738, %4104
  %3771 = phi i64 [ 0, %3738 ], [ %4105, %4104 ]
  %3772 = shl nuw nsw i64 %3771, 1
  %3773 = sdiv i64 %3772, %126
  %3774 = mul nsw i64 %3773, %126
  %3775 = mul nsw i64 %3772, %122
  %3776 = sub nsw i64 %94, %3775
  %3777 = icmp sgt i64 %3776, %122
  %3778 = select i1 %3777, i64 %122, i64 %3776
  %3779 = icmp sgt i64 %3778, 0
  %3780 = select i1 %3779, i64 %3778, i64 0
  %3781 = freeze i64 %3775
  %3782 = freeze i64 %166
  %3783 = sdiv i64 %3781, %3782
  %3784 = mul i64 %3783, %3782
  %3785 = sub i64 %3781, %3784
  %3786 = sdiv i64 %3785, %93
  %3787 = srem i64 %3775, %93
  %3788 = icmp eq i64 %3771, 0
  br i1 %3788, label %3790, label %3789

3789:                                             ; preds = %3770
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %3790

3790:                                             ; preds = %3770, %3789
  %3791 = and i1 %3702, %3777
  br i1 %3791, label %3792, label %3815

3792:                                             ; preds = %3790
  br i1 %3745, label %3799, label %3793

3793:                                             ; preds = %3792
  %3794 = mul nsw i64 %3775, %358
  %3795 = add i64 %3742, %3794
  %3796 = trunc i64 %3795 to i32
  %3797 = shl i32 %3796, 8
  %3798 = getelementptr inbounds i16, i16* %284, i32 %3797
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %3798, i16 zeroext 0, i8 zeroext %3658, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %3839

3799:                                             ; preds = %3792
  br i1 %3688, label %3839, label %3800

3800:                                             ; preds = %3799, %3800
  %3801 = phi i64 [ %3813, %3800 ], [ 0, %3799 ]
  %3802 = mul i64 %3746, %3801
  %3803 = add nsw i64 %3802, %248
  %3804 = trunc i64 %3803 to i32
  %3805 = getelementptr inbounds i16, i16* %328, i32 %3804
  %3806 = add i64 %3801, %3775
  %3807 = mul i64 %3806, %358
  %3808 = add i64 %3807, %3700
  %3809 = shl i64 %3808, 8
  %3810 = add i64 %3662, %3809
  %3811 = trunc i64 %3810 to i32
  %3812 = getelementptr inbounds i16, i16* %284, i32 %3811
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3805, i16* %3812, i16 zeroext 0, i8 zeroext %3663, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %3813 = add nuw nsw i64 %3801, 1
  %3814 = icmp slt i64 %3813, %122
  br i1 %3814, label %3800, label %3839

3815:                                             ; preds = %3790
  %3816 = and i1 %3704, %3779
  br i1 %3816, label %3817, label %3839

3817:                                             ; preds = %3815
  br i1 %3741, label %3818, label %3825

3818:                                             ; preds = %3817
  %3819 = mul nsw i64 %3775, %358
  %3820 = add i64 %3742, %3819
  %3821 = trunc i64 %3820 to i32
  %3822 = shl i32 %3821, 8
  %3823 = getelementptr inbounds i16, i16* %284, i32 %3822
  %3824 = trunc i64 %3780 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %3823, i16 zeroext 0, i8 zeroext %3824, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %3839

3825:                                             ; preds = %3817, %3825
  %3826 = phi i64 [ %3837, %3825 ], [ 0, %3817 ]
  %3827 = mul nsw i64 %3826, %3703
  %3828 = trunc i64 %3827 to i32
  %3829 = shl i32 %3828, 8
  %3830 = getelementptr inbounds i16, i16* %328, i32 %3829
  %3831 = add i64 %3826, %3775
  %3832 = mul i64 %3831, %358
  %3833 = add i64 %3742, %3832
  %3834 = trunc i64 %3833 to i32
  %3835 = shl i32 %3834, 8
  %3836 = getelementptr inbounds i16, i16* %284, i32 %3835
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3830, i16* %3836, i16 zeroext 0, i8 zeroext %3743, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %3837 = add nuw nsw i64 %3826, 1
  %3838 = icmp ult i64 %3837, %3780
  br i1 %3838, label %3825, label %3839

3839:                                             ; preds = %3825, %3800, %3799, %3815, %3818, %3793
  %3840 = and i1 %3718, %3779
  %3841 = and i1 %3664, %3840
  br i1 %3841, label %3842, label %3913

3842:                                             ; preds = %3839
  %3843 = trunc i64 %3787 to i8
  %3844 = trunc i64 %3786 to i8
  %3845 = trunc i64 %3783 to i16
  %3846 = icmp slt i64 %3780, %3719
  %3847 = trunc i64 %3780 to i8
  %3848 = select i1 %3846, i8 %3847, i8 1
  %3849 = zext i1 %3846 to i8
  %3850 = select i1 %3846, i64 %3719, i64 %3780
  %3851 = trunc i64 %3850 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %286, i8 zeroext %3843, i8 zeroext %3844, i16 signext %3747, i16 signext %3748, i16 zeroext %3845, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %3848, i8 zeroext %3849, i8 zeroext %3851, i32 0)
  %3852 = add nuw nsw i64 %3780, %3719
  %3853 = icmp eq i64 %3852, 2
  br i1 %3853, label %3913, label %3854

3854:                                             ; preds = %3842
  br i1 %3846, label %3883, label %3855

3855:                                             ; preds = %3854
  br i1 %3752, label %3856, label %3913

3856:                                             ; preds = %3855, %3856
  %3857 = phi i32 [ %3866, %3856 ], [ %3749, %3855 ]
  %3858 = phi i32 [ %3868, %3856 ], [ %3750, %3855 ]
  %3859 = phi i64 [ %3869, %3856 ], [ 0, %3855 ]
  %3860 = add i32 %3858, %3669
  %3861 = icmp slt i32 %170, %3860
  %3862 = zext i32 %3857 to i64
  %3863 = add nsw i64 %174, %3862
  %3864 = zext i1 %3861 to i64
  %3865 = add i64 %3863, %3864
  %3866 = trunc i64 %3865 to i32
  %3867 = select i1 %3861, i32 %3670, i32 0
  %3868 = sub i32 %3860, %3867
  %3869 = add nuw nsw i64 %3859, 1
  %3870 = mul nuw nsw i64 %3869, %3780
  %3871 = trunc i64 %3870 to i32
  %3872 = shl i32 %3871, 8
  %3873 = getelementptr inbounds i16, i16* %331, i32 %3872
  %3874 = mul nsw i32 %3868, %39
  %3875 = zext i32 %3874 to i64
  %3876 = sub i64 %3875, %244
  %3877 = trunc i64 %3876 to i16
  %3878 = mul nsw i32 %36, %3866
  %3879 = zext i32 %3878 to i64
  %3880 = sub i64 %3879, %3654
  %3881 = trunc i64 %3880 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %3873, i16* %286, i8 zeroext %3843, i8 zeroext %3844, i16 signext %3877, i16 signext %3881, i16 zeroext %3845, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %3847, i32 0)
  %3882 = icmp slt i64 %3869, %3751
  br i1 %3882, label %3856, label %3913

3883:                                             ; preds = %3854
  %3884 = add nsw i64 %3780, -1
  %3885 = icmp sgt i64 %3780, 1
  br i1 %3885, label %3886, label %3913

3886:                                             ; preds = %3883
  %3887 = trunc i64 %3783 to i32
  %3888 = trunc i64 %3787 to i32
  %3889 = trunc i64 %3786 to i32
  br label %3890

3890:                                             ; preds = %3886, %3890
  %3891 = phi i32 [ %3903, %3890 ], [ %3889, %3886 ]
  %3892 = phi i32 [ %3899, %3890 ], [ %3888, %3886 ]
  %3893 = phi i32 [ %3902, %3890 ], [ %3887, %3886 ]
  %3894 = phi i64 [ %3911, %3890 ], [ 0, %3886 ]
  %3895 = add nsw i32 %3892, 1
  %3896 = icmp eq i32 %3895, %27
  %3897 = zext i1 %3896 to i32
  %3898 = add nsw i32 %3891, %3897
  %3899 = select i1 %3896, i32 0, i32 %3895
  %3900 = icmp eq i32 %3898, %24
  %3901 = zext i1 %3900 to i32
  %3902 = add nsw i32 %3893, %3901
  %3903 = select i1 %3900, i32 0, i32 %3898
  %3904 = trunc i64 %3894 to i32
  %3905 = shl i32 %3904, 8
  %3906 = add i32 %3905, 256
  %3907 = getelementptr inbounds i16, i16* %331, i32 %3906
  %3908 = trunc i32 %3899 to i8
  %3909 = trunc i32 %3903 to i8
  %3910 = trunc i32 %3902 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %3907, i16* %286, i8 zeroext %3908, i8 zeroext %3909, i16 signext %3747, i16 signext %3748, i16 zeroext %3910, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %3847, i8 zeroext 1, i8 zeroext %3753, i32 0)
  %3911 = add nuw nsw i64 %3894, 1
  %3912 = icmp slt i64 %3911, %3884
  br i1 %3912, label %3890, label %3913

3913:                                             ; preds = %3856, %3890, %3855, %3883, %3842, %3839
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %3914 = icmp sle i64 %3772, %123
  %3915 = and i1 %3664, %3914
  %3916 = and i1 %3754, %3779
  %3917 = and i1 %3915, %3916
  br i1 %3917, label %3918, label %3934

3918:                                             ; preds = %3913
  %3919 = icmp sgt i64 %94, %3775
  %3920 = shl nsw i64 %3775, 4
  %3921 = sub nsw i64 %249, %3920
  %3922 = sub nsw i64 %3920, %249
  %3923 = select i1 %3919, i64 %3921, i64 %3922
  %3924 = icmp sgt i64 %3923, 0
  br i1 %3924, label %3925, label %3934

3925:                                             ; preds = %3918
  %3926 = shl nsw i64 %3780, 4
  %3927 = icmp slt i64 %3926, %3923
  %3928 = select i1 %3927, i64 %3926, i64 %3923
  %3929 = trunc i64 %3928 to i16
  %3930 = icmp eq i64 %3773, 0
  %3931 = icmp eq i64 %3772, %3774
  %3932 = and i1 %3930, %3931
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %331, i16* %328, i16 zeroext %3756, i16 zeroext %3929, i16 zeroext %3758, i1 zeroext %3932)
  br i1 %3765, label %3934, label %3933

3933:                                             ; preds = %3925
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %3934

3934:                                             ; preds = %3925, %3913, %3933, %3918
  %3935 = icmp slt i64 %3771, %250
  %3936 = and i1 %3671, %3935
  br i1 %3936, label %3937, label %3938

3937:                                             ; preds = %3934
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %3938

3938:                                             ; preds = %3937, %3934
  br i1 %3788, label %3940, label %3939

3939:                                             ; preds = %3938
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %3940

3940:                                             ; preds = %3938, %3939
  %3941 = or i64 %3772, 1
  %3942 = icmp slt i64 %3941, %245
  br i1 %3942, label %3943, label %4102

3943:                                             ; preds = %3940
  %3944 = sdiv i64 %3941, %126
  %3945 = mul nsw i64 %3944, %126
  %3946 = mul nsw i64 %3941, %122
  %3947 = sub nsw i64 %94, %3946
  %3948 = icmp sgt i64 %3947, %122
  %3949 = select i1 %3948, i64 %122, i64 %3947
  %3950 = icmp sgt i64 %3949, 0
  %3951 = select i1 %3950, i64 %3949, i64 0
  %3952 = freeze i64 %3946
  %3953 = freeze i64 %166
  %3954 = sdiv i64 %3952, %3953
  %3955 = mul i64 %3954, %3953
  %3956 = sub i64 %3952, %3955
  %3957 = sdiv i64 %3956, %93
  %3958 = srem i64 %3946, %93
  %3959 = and i1 %3702, %3948
  br i1 %3959, label %3960, label %3983

3960:                                             ; preds = %3943
  br i1 %3745, label %3967, label %3961

3961:                                             ; preds = %3960
  %3962 = mul nsw i64 %3946, %358
  %3963 = add i64 %3742, %3962
  %3964 = trunc i64 %3963 to i32
  %3965 = shl i32 %3964, 8
  %3966 = getelementptr inbounds i16, i16* %284, i32 %3965
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %3966, i16 zeroext 0, i8 zeroext %3658, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %4007

3967:                                             ; preds = %3960
  br i1 %3689, label %4007, label %3968

3968:                                             ; preds = %3967, %3968
  %3969 = phi i64 [ %3981, %3968 ], [ 0, %3967 ]
  %3970 = mul i64 %3746, %3969
  %3971 = add nsw i64 %3970, %248
  %3972 = trunc i64 %3971 to i32
  %3973 = getelementptr inbounds i16, i16* %332, i32 %3972
  %3974 = add i64 %3969, %3946
  %3975 = mul i64 %3974, %358
  %3976 = add i64 %3975, %3700
  %3977 = shl i64 %3976, 8
  %3978 = add i64 %3662, %3977
  %3979 = trunc i64 %3978 to i32
  %3980 = getelementptr inbounds i16, i16* %284, i32 %3979
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3973, i16* %3980, i16 zeroext 0, i8 zeroext %3663, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %3981 = add nuw nsw i64 %3969, 1
  %3982 = icmp slt i64 %3981, %122
  br i1 %3982, label %3968, label %4007

3983:                                             ; preds = %3943
  %3984 = and i1 %3704, %3950
  br i1 %3984, label %3985, label %4007

3985:                                             ; preds = %3983
  br i1 %3741, label %3986, label %3993

3986:                                             ; preds = %3985
  %3987 = mul nsw i64 %3946, %358
  %3988 = add i64 %3742, %3987
  %3989 = trunc i64 %3988 to i32
  %3990 = shl i32 %3989, 8
  %3991 = getelementptr inbounds i16, i16* %284, i32 %3990
  %3992 = trunc i64 %3951 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %3991, i16 zeroext 0, i8 zeroext %3992, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %4007

3993:                                             ; preds = %3985, %3993
  %3994 = phi i64 [ %4005, %3993 ], [ 0, %3985 ]
  %3995 = mul nsw i64 %3994, %3703
  %3996 = trunc i64 %3995 to i32
  %3997 = shl i32 %3996, 8
  %3998 = getelementptr inbounds i16, i16* %332, i32 %3997
  %3999 = add i64 %3994, %3946
  %4000 = mul i64 %3999, %358
  %4001 = add i64 %3742, %4000
  %4002 = trunc i64 %4001 to i32
  %4003 = shl i32 %4002, 8
  %4004 = getelementptr inbounds i16, i16* %284, i32 %4003
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %3998, i16* %4004, i16 zeroext 0, i8 zeroext %3743, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %4005 = add nuw nsw i64 %3994, 1
  %4006 = icmp ult i64 %4005, %3951
  br i1 %4006, label %3993, label %4007

4007:                                             ; preds = %3993, %3968, %3967, %3983, %3986, %3961
  %4008 = and i1 %3718, %3950
  %4009 = and i1 %3664, %4008
  br i1 %4009, label %4010, label %4081

4010:                                             ; preds = %4007
  %4011 = trunc i64 %3958 to i8
  %4012 = trunc i64 %3957 to i8
  %4013 = trunc i64 %3954 to i16
  %4014 = icmp slt i64 %3951, %3719
  %4015 = trunc i64 %3951 to i8
  %4016 = select i1 %4014, i8 %4015, i8 1
  %4017 = zext i1 %4014 to i8
  %4018 = select i1 %4014, i64 %3719, i64 %3951
  %4019 = trunc i64 %4018 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %286, i8 zeroext %4011, i8 zeroext %4012, i16 signext %3747, i16 signext %3748, i16 zeroext %4013, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %4016, i8 zeroext %4017, i8 zeroext %4019, i32 0)
  %4020 = add nuw nsw i64 %3951, %3719
  %4021 = icmp eq i64 %4020, 2
  br i1 %4021, label %4081, label %4022

4022:                                             ; preds = %4010
  br i1 %4014, label %4051, label %4023

4023:                                             ; preds = %4022
  br i1 %3752, label %4024, label %4081

4024:                                             ; preds = %4023, %4024
  %4025 = phi i32 [ %4034, %4024 ], [ %3749, %4023 ]
  %4026 = phi i32 [ %4036, %4024 ], [ %3750, %4023 ]
  %4027 = phi i64 [ %4037, %4024 ], [ 0, %4023 ]
  %4028 = add i32 %4026, %3669
  %4029 = icmp slt i32 %170, %4028
  %4030 = zext i32 %4025 to i64
  %4031 = add nsw i64 %174, %4030
  %4032 = zext i1 %4029 to i64
  %4033 = add i64 %4031, %4032
  %4034 = trunc i64 %4033 to i32
  %4035 = select i1 %4029, i32 %3670, i32 0
  %4036 = sub i32 %4028, %4035
  %4037 = add nuw nsw i64 %4027, 1
  %4038 = mul nuw nsw i64 %4037, %3951
  %4039 = trunc i64 %4038 to i32
  %4040 = shl i32 %4039, 8
  %4041 = getelementptr inbounds i16, i16* %333, i32 %4040
  %4042 = mul nsw i32 %4036, %39
  %4043 = zext i32 %4042 to i64
  %4044 = sub i64 %4043, %244
  %4045 = trunc i64 %4044 to i16
  %4046 = mul nsw i32 %36, %4034
  %4047 = zext i32 %4046 to i64
  %4048 = sub i64 %4047, %3654
  %4049 = trunc i64 %4048 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %4041, i16* %286, i8 zeroext %4011, i8 zeroext %4012, i16 signext %4045, i16 signext %4049, i16 zeroext %4013, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %4015, i32 0)
  %4050 = icmp slt i64 %4037, %3751
  br i1 %4050, label %4024, label %4081

4051:                                             ; preds = %4022
  %4052 = add nsw i64 %3951, -1
  %4053 = icmp sgt i64 %3951, 1
  br i1 %4053, label %4054, label %4081

4054:                                             ; preds = %4051
  %4055 = trunc i64 %3954 to i32
  %4056 = trunc i64 %3958 to i32
  %4057 = trunc i64 %3957 to i32
  br label %4058

4058:                                             ; preds = %4054, %4058
  %4059 = phi i32 [ %4071, %4058 ], [ %4057, %4054 ]
  %4060 = phi i32 [ %4067, %4058 ], [ %4056, %4054 ]
  %4061 = phi i32 [ %4070, %4058 ], [ %4055, %4054 ]
  %4062 = phi i64 [ %4079, %4058 ], [ 0, %4054 ]
  %4063 = add nsw i32 %4060, 1
  %4064 = icmp eq i32 %4063, %27
  %4065 = zext i1 %4064 to i32
  %4066 = add nsw i32 %4059, %4065
  %4067 = select i1 %4064, i32 0, i32 %4063
  %4068 = icmp eq i32 %4066, %24
  %4069 = zext i1 %4068 to i32
  %4070 = add nsw i32 %4061, %4069
  %4071 = select i1 %4068, i32 0, i32 %4066
  %4072 = trunc i64 %4062 to i32
  %4073 = shl i32 %4072, 8
  %4074 = add i32 %4073, 256
  %4075 = getelementptr inbounds i16, i16* %333, i32 %4074
  %4076 = trunc i32 %4067 to i8
  %4077 = trunc i32 %4071 to i8
  %4078 = trunc i32 %4070 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %4075, i16* %286, i8 zeroext %4076, i8 zeroext %4077, i16 signext %3747, i16 signext %3748, i16 zeroext %4078, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %4015, i8 zeroext 1, i8 zeroext %3753, i32 0)
  %4079 = add nuw nsw i64 %4062, 1
  %4080 = icmp slt i64 %4079, %4052
  br i1 %4080, label %4058, label %4081

4081:                                             ; preds = %4024, %4058, %4023, %4051, %4010, %4007
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %4082 = icmp sle i64 %3941, %123
  %4083 = and i1 %3664, %4082
  %4084 = and i1 %3754, %3950
  %4085 = and i1 %4083, %4084
  br i1 %4085, label %4086, label %4102

4086:                                             ; preds = %4081
  %4087 = icmp sgt i64 %94, %3946
  %4088 = shl nsw i64 %3946, 4
  %4089 = sub nsw i64 %249, %4088
  %4090 = sub nsw i64 %4088, %249
  %4091 = select i1 %4087, i64 %4089, i64 %4090
  %4092 = icmp sgt i64 %4091, 0
  br i1 %4092, label %4093, label %4102

4093:                                             ; preds = %4086
  %4094 = shl nsw i64 %3951, 4
  %4095 = icmp slt i64 %4094, %4091
  %4096 = select i1 %4095, i64 %4094, i64 %4091
  %4097 = trunc i64 %4096 to i16
  %4098 = icmp eq i64 %3944, 0
  %4099 = icmp eq i64 %3941, %3945
  %4100 = and i1 %4098, %4099
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %333, i16* %332, i16 zeroext %3756, i16 zeroext %4097, i16 zeroext %3758, i1 zeroext %4100)
  br i1 %3768, label %4102, label %4101

4101:                                             ; preds = %4093
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %4102

4102:                                             ; preds = %4093, %4081, %4086, %4101, %3940
  br i1 %3936, label %4103, label %4104

4103:                                             ; preds = %4102
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %4104

4104:                                             ; preds = %4103, %4102
  %4105 = add nuw nsw i64 %3771, 1
  %4106 = icmp slt i64 %4105, %247
  br i1 %4106, label %3770, label %3769

4107:                                             ; preds = %3769
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %4108

4108:                                             ; preds = %3769, %4107
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %3672, label %4109, label %4153

4109:                                             ; preds = %4108
  %4110 = icmp sgt i64 %3714, 1048559
  %4111 = shl i64 %3714, 4
  %4112 = and i64 %3719, 72057594037927935
  %4113 = shl nuw nsw i64 %4112, 8
  %4114 = sub nsw i64 %4111, %4113
  %4115 = icmp slt i64 %4114, -15
  %4116 = trunc i64 %3719 to i16
  %4117 = sdiv i64 %4114, 256
  %4118 = trunc i64 %4117 to i16
  %4119 = shl nuw nsw i64 %4112, 4
  %4120 = sub nsw i64 %3714, %4119
  %4121 = trunc i64 %4120 to i16
  %4122 = sub nsw i64 %4111, %254
  %4123 = icmp slt i64 %4122, -15
  %4124 = sdiv i64 %4122, 256
  %4125 = trunc i64 %4124 to i16
  %4126 = sub nsw i64 %3714, %255
  %4127 = trunc i64 %4126 to i16
  %4128 = icmp sgt i64 %3699, %188
  %4129 = icmp sgt i64 %3706, %193
  %4130 = or i1 %4128, %4129
  %4131 = or i1 %3677, %4130
  %4132 = icmp sgt i64 %3714, 65534
  %4133 = sub nsw i64 %120, %3734
  %4134 = sub nsw i64 %3714, %3734
  %4135 = shl nsw i64 %3712, 8
  %4136 = trunc i64 %3734 to i16
  %4137 = trunc i64 %4134 to i16
  %4138 = trunc i64 %4133 to i16
  %4139 = icmp slt i64 %3714, 65535
  %4140 = and i1 %3682, %4139
  %4141 = and i1 %3683, %4140
  %4142 = sub nsw i64 %3714, %178
  %4143 = icmp slt i64 %4142, 0
  %4144 = trunc i64 %4142 to i16
  %4145 = or i1 %4110, %4115
  %4146 = or i1 %4110, %4123
  %4147 = or i1 %3678, %4132
  %4148 = or i64 %4133, %4134
  %4149 = icmp slt i64 %4148, 0
  %4150 = or i1 %4149, %4147
  %4151 = xor i1 %4141, true
  %4152 = or i1 %4143, %4151
  br label %4156

4153:                                             ; preds = %4274, %4108
  %4154 = icmp slt i64 %3694, %259
  %4155 = and i1 %3687, %4154
  br i1 %4155, label %4277, label %4278

4156:                                             ; preds = %4109, %4274
  %4157 = phi i64 [ 0, %4109 ], [ %4275, %4274 ]
  %4158 = mul nsw i64 %4157, %3673
  %4159 = sub nsw i64 %87, %4158
  %4160 = sub i64 %4159, %3700
  %4161 = icmp sgt i64 %4160, %3673
  %4162 = select i1 %4161, i64 %3673, i64 %4160
  %4163 = icmp sgt i64 %4162, 0
  %4164 = select i1 %4163, i64 %4162, i64 0
  %4165 = icmp eq i64 %4157, 0
  br i1 %4165, label %4167, label %4166

4166:                                             ; preds = %4156
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %4167

4167:                                             ; preds = %4156, %4166
  br i1 %3664, label %4168, label %4269

4168:                                             ; preds = %4167
  %4169 = and i1 %3716, %4161
  br i1 %4169, label %4170, label %4190

4170:                                             ; preds = %4168
  br i1 %4146, label %4176, label %4171

4171:                                             ; preds = %4170
  %4172 = mul nsw i64 %4158, %3714
  %4173 = trunc i64 %4172 to i32
  %4174 = shl i32 %4173, 4
  %4175 = getelementptr inbounds float, float* %325, i32 %4174
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %4175, i8 zeroext 0, i16 zeroext %3676, i16 zeroext %3675, i16 zeroext %4125, i16 zeroext %4127, i32 1)
  br label %4211

4176:                                             ; preds = %4170
  br i1 %3674, label %4177, label %4211

4177:                                             ; preds = %4176
  %4178 = mul nsw i64 %4158, %3714
  %4179 = shl nsw i64 %4178, 4
  br label %4180

4180:                                             ; preds = %4177, %4180
  %4181 = phi i64 [ 0, %4177 ], [ %4188, %4180 ]
  %4182 = mul i64 %4111, %4181
  %4183 = trunc i64 %4182 to i32
  %4184 = getelementptr inbounds i16, i16* %336, i32 %4183
  %4185 = add nsw i64 %4182, %4179
  %4186 = trunc i64 %4185 to i32
  %4187 = getelementptr inbounds float, float* %325, i32 %4186
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %4184, float* %4187, i8 zeroext 0, i16 zeroext 1, i16 zeroext %3675, i16 zeroext 0, i16 zeroext 0, i32 1)
  %4188 = add nuw nsw i64 %4181, 1
  %4189 = icmp slt i64 %4188, %3673
  br i1 %4189, label %4180, label %4211

4190:                                             ; preds = %4168
  %4191 = and i1 %3718, %4163
  br i1 %4191, label %4192, label %4211

4192:                                             ; preds = %4190
  %4193 = mul nsw i64 %4158, %3714
  br i1 %4145, label %4199, label %4194

4194:                                             ; preds = %4192
  %4195 = trunc i64 %4193 to i32
  %4196 = shl i32 %4195, 4
  %4197 = getelementptr inbounds float, float* %325, i32 %4196
  %4198 = trunc i64 %4164 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %4197, i8 zeroext 0, i16 zeroext %4198, i16 zeroext %4116, i16 zeroext %4118, i16 zeroext %4121, i32 1)
  br label %4211

4199:                                             ; preds = %4192
  %4200 = shl nsw i64 %4193, 4
  br label %4201

4201:                                             ; preds = %4199, %4201
  %4202 = phi i64 [ 0, %4199 ], [ %4209, %4201 ]
  %4203 = mul i64 %4111, %4202
  %4204 = trunc i64 %4203 to i32
  %4205 = getelementptr inbounds i16, i16* %336, i32 %4204
  %4206 = add nsw i64 %4203, %4200
  %4207 = trunc i64 %4206 to i32
  %4208 = getelementptr inbounds float, float* %325, i32 %4207
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %4205, float* %4208, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4116, i16 zeroext 0, i16 zeroext 0, i32 1)
  %4209 = add nuw nsw i64 %4202, 1
  %4210 = icmp ult i64 %4209, %4164
  br i1 %4210, label %4201, label %4211

4211:                                             ; preds = %4201, %4180, %4176, %4171, %4194, %4190
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %4131, label %4270, label %4212

4212:                                             ; preds = %4211
  %4213 = and i1 %3731, %4161
  br i1 %4213, label %4214, label %4242

4214:                                             ; preds = %4212
  br i1 %4152, label %4223, label %4215

4215:                                             ; preds = %4214
  %4216 = add i64 %4158, %3700
  %4217 = add i64 %4216, %3679
  %4218 = mul i64 %3680, %4217
  %4219 = add nsw i64 %4218, %4135
  %4220 = trunc i64 %4219 to i32
  %4221 = getelementptr inbounds i16, i16* %2, i32 %4220
  %4222 = bitcast i16* %4221 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4222, i8* %3681, i8 zeroext 0, i16 zeroext %3676, i16 zeroext %3684, i16 zeroext %4144, i16 zeroext %3685)
  br label %4270

4223:                                             ; preds = %4214
  br i1 %3674, label %4224, label %4270

4224:                                             ; preds = %4223
  %4225 = add i64 %4158, %3700
  %4226 = add i64 %4225, %3679
  br label %4227

4227:                                             ; preds = %4224, %4227
  %4228 = phi i64 [ 0, %4224 ], [ %4240, %4227 ]
  %4229 = add i64 %4226, %4228
  %4230 = mul i64 %3680, %4229
  %4231 = add i64 %4230, %4135
  %4232 = trunc i64 %4231 to i32
  %4233 = getelementptr inbounds i16, i16* %2, i32 %4232
  %4234 = bitcast i16* %4233 to i8*
  %4235 = mul nsw i64 %4228, %3714
  %4236 = trunc i64 %4235 to i32
  %4237 = shl i32 %4236, 4
  %4238 = getelementptr inbounds i16, i16* %336, i32 %4237
  %4239 = bitcast i16* %4238 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4234, i8* %4239, i8 zeroext 0, i16 zeroext 1, i16 zeroext %3684, i16 zeroext 0, i16 zeroext 0)
  %4240 = add nuw nsw i64 %4228, 1
  %4241 = icmp slt i64 %4240, %3673
  br i1 %4241, label %4227, label %4270

4242:                                             ; preds = %4212
  %4243 = and i1 %3733, %4163
  br i1 %4243, label %4244, label %4270

4244:                                             ; preds = %4242
  %4245 = add i64 %4158, %3700
  %4246 = add i64 %4245, %3679
  br i1 %4150, label %4254, label %4247

4247:                                             ; preds = %4244
  %4248 = mul i64 %3680, %4246
  %4249 = add nsw i64 %4248, %4135
  %4250 = trunc i64 %4249 to i32
  %4251 = getelementptr inbounds i16, i16* %2, i32 %4250
  %4252 = bitcast i16* %4251 to i8*
  %4253 = trunc i64 %4164 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4252, i8* %3681, i8 zeroext 0, i16 zeroext %4253, i16 zeroext %4136, i16 zeroext %4137, i16 zeroext %4138)
  br label %4270

4254:                                             ; preds = %4244, %4254
  %4255 = phi i64 [ %4267, %4254 ], [ 0, %4244 ]
  %4256 = add i64 %4246, %4255
  %4257 = mul i64 %3680, %4256
  %4258 = add i64 %4257, %4135
  %4259 = trunc i64 %4258 to i32
  %4260 = getelementptr inbounds i16, i16* %2, i32 %4259
  %4261 = bitcast i16* %4260 to i8*
  %4262 = mul nsw i64 %4255, %3714
  %4263 = trunc i64 %4262 to i32
  %4264 = shl i32 %4263, 4
  %4265 = getelementptr inbounds i16, i16* %336, i32 %4264
  %4266 = bitcast i16* %4265 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4261, i8* %4266, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4136, i16 zeroext 0, i16 zeroext 0)
  %4267 = add nuw nsw i64 %4255, 1
  %4268 = icmp ult i64 %4267, %4164
  br i1 %4268, label %4254, label %4270

4269:                                             ; preds = %4167
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %4270

4270:                                             ; preds = %4254, %4227, %4223, %4211, %4269, %4215, %4247, %4242
  %4271 = icmp slt i64 %4157, %258
  %4272 = and i1 %3686, %4271
  br i1 %4272, label %4273, label %4274

4273:                                             ; preds = %4270
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %4274

4274:                                             ; preds = %4273, %4270
  %4275 = add nuw nsw i64 %4157, 1
  %4276 = icmp slt i64 %4275, %257
  br i1 %4276, label %4156, label %4153

4277:                                             ; preds = %4153
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %4278

4278:                                             ; preds = %4277, %4153
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br i1 %3735, label %4280, label %4279

4279:                                             ; preds = %4278
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %4280

4280:                                             ; preds = %4278, %4279
  %4281 = or i64 %3695, 1
  %4282 = icmp slt i64 %4281, %236
  br i1 %4282, label %4283, label %4857

4283:                                             ; preds = %4280
  %4284 = sdiv i64 %4281, %198
  %4285 = mul nsw i64 %4284, %198
  %4286 = sub nsw i64 %4281, %4285
  %4287 = add nsw i64 %4284, %351
  %4288 = mul nsw i64 %4287, %160
  %4289 = sub nsw i64 %87, %4288
  %4290 = icmp sgt i64 %4289, %160
  %4291 = select i1 %4290, i64 %160, i64 %4289
  %4292 = icmp sgt i64 %4291, 0
  %4293 = select i1 %4292, i64 %4291, i64 0
  %4294 = add nsw i64 %4286, %3624
  %4295 = add nsw i64 %4294, 1
  %4296 = mul nsw i64 %4295, %177
  %4297 = icmp slt i64 %4296, %240
  %4298 = select i1 %4297, i64 %4296, i64 %240
  %4299 = shl nsw i64 %4298, 4
  %4300 = mul nsw i64 %4294, %177
  %4301 = shl nsw i64 %4300, 4
  %4302 = sub nsw i64 %4299, %4301
  %4303 = sub nsw i64 %240, %4300
  %4304 = icmp sgt i64 %4303, %177
  %4305 = select i1 %4304, i64 %177, i64 %4303
  %4306 = icmp sgt i64 %4305, 0
  %4307 = select i1 %4306, i64 %4305, i64 0
  %4308 = sub nsw i64 %4301, %3646
  %4309 = freeze i64 %4308
  %4310 = freeze i64 %172
  %4311 = sdiv i64 %4309, %4310
  %4312 = mul i64 %4311, %4310
  %4313 = sub i64 %4309, %4312
  %4314 = sub nsw i64 %120, %4301
  %4315 = icmp slt i64 %178, %4314
  %4316 = select i1 %4315, i64 %178, i64 %4314
  %4317 = icmp sgt i64 %4316, 0
  %4318 = select i1 %4317, i64 %4316, i64 0
  br i1 %3655, label %4319, label %4354

4319:                                             ; preds = %4283
  %4320 = mul nsw i64 %4313, %150
  %4321 = sub nsw i64 %4320, %244
  %4322 = mul nsw i64 %4311, %301
  %4323 = sub nsw i64 %4322, %3654
  %4324 = icmp slt i64 %4293, 2
  %4325 = icmp slt i64 %4291, 2
  %4326 = and i1 %4325, %4324
  %4327 = mul i64 %4284, %160
  %4328 = trunc i64 %4293 to i8
  %4329 = icmp sgt i64 %4291, 1
  %4330 = or i1 %3657, %4329
  %4331 = shl i64 %4291, 8
  %4332 = trunc i64 %4321 to i16
  %4333 = trunc i64 %4323 to i16
  %4334 = trunc i64 %4311 to i32
  %4335 = trunc i64 %4313 to i32
  %4336 = add nsw i64 %4307, -1
  %4337 = icmp sgt i64 %4307, 1
  %4338 = trunc i64 %4307 to i8
  %4339 = and i1 %4292, %4306
  %4340 = trunc i64 %4307 to i16
  %4341 = shl i16 %4340, 4
  %4342 = trunc i64 %4293 to i16
  %4343 = shl i16 %4342, 4
  %4344 = icmp sgt i64 %4307, 4
  %4345 = icmp sgt i64 %4293, 1
  %4346 = icmp sgt i64 %4307, 2
  %4347 = icmp sgt i64 %4293, 2
  %4348 = and i1 %4345, %4344
  %4349 = and i1 %4347, %4346
  %4350 = or i1 %4348, %4349
  %4351 = and i1 %4345, %4344
  %4352 = and i1 %4347, %4346
  %4353 = or i1 %4351, %4352
  br label %4399

4354:                                             ; preds = %4733, %4283
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %3672, label %4355, label %4857

4355:                                             ; preds = %4354
  %4356 = icmp sgt i64 %4302, 1048559
  %4357 = shl i64 %4302, 4
  %4358 = and i64 %4307, 72057594037927935
  %4359 = shl nuw nsw i64 %4358, 8
  %4360 = sub nsw i64 %4357, %4359
  %4361 = icmp slt i64 %4360, -15
  %4362 = trunc i64 %4307 to i16
  %4363 = sdiv i64 %4360, 256
  %4364 = trunc i64 %4363 to i16
  %4365 = shl nuw nsw i64 %4358, 4
  %4366 = sub nsw i64 %4302, %4365
  %4367 = trunc i64 %4366 to i16
  %4368 = sub nsw i64 %4357, %254
  %4369 = icmp slt i64 %4368, -15
  %4370 = sdiv i64 %4368, 256
  %4371 = trunc i64 %4370 to i16
  %4372 = sub nsw i64 %4302, %255
  %4373 = trunc i64 %4372 to i16
  %4374 = icmp sgt i64 %4287, %188
  %4375 = icmp sgt i64 %4294, %193
  %4376 = or i1 %4374, %4375
  %4377 = or i1 %3677, %4376
  %4378 = icmp sgt i64 %4302, 65534
  %4379 = sub nsw i64 %120, %4318
  %4380 = sub nsw i64 %4302, %4318
  %4381 = shl nsw i64 %4300, 8
  %4382 = trunc i64 %4318 to i16
  %4383 = trunc i64 %4380 to i16
  %4384 = trunc i64 %4379 to i16
  %4385 = icmp slt i64 %4302, 65535
  %4386 = and i1 %3682, %4385
  %4387 = and i1 %3683, %4386
  %4388 = sub nsw i64 %4302, %178
  %4389 = icmp slt i64 %4388, 0
  %4390 = trunc i64 %4388 to i16
  %4391 = or i1 %4356, %4361
  %4392 = or i1 %4356, %4369
  %4393 = or i1 %3678, %4378
  %4394 = or i64 %4379, %4380
  %4395 = icmp slt i64 %4394, 0
  %4396 = or i1 %4395, %4393
  %4397 = xor i1 %4387, true
  %4398 = or i1 %4389, %4397
  br label %4736

4399:                                             ; preds = %4319, %4733
  %4400 = phi i64 [ 0, %4319 ], [ %4734, %4733 ]
  %4401 = shl nuw nsw i64 %4400, 1
  %4402 = sdiv i64 %4401, %126
  %4403 = mul nsw i64 %4402, %126
  %4404 = mul nsw i64 %4401, %122
  %4405 = sub nsw i64 %94, %4404
  %4406 = icmp sgt i64 %4405, %122
  %4407 = select i1 %4406, i64 %122, i64 %4405
  %4408 = icmp sgt i64 %4407, 0
  %4409 = select i1 %4408, i64 %4407, i64 0
  %4410 = freeze i64 %4404
  %4411 = freeze i64 %166
  %4412 = sdiv i64 %4410, %4411
  %4413 = mul i64 %4412, %4411
  %4414 = sub i64 %4410, %4413
  %4415 = sdiv i64 %4414, %93
  %4416 = srem i64 %4404, %93
  %4417 = icmp eq i64 %4400, 0
  br i1 %4417, label %4419, label %4418

4418:                                             ; preds = %4399
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %4419

4419:                                             ; preds = %4399, %4418
  %4420 = and i1 %4290, %4406
  br i1 %4420, label %4421, label %4444

4421:                                             ; preds = %4419
  br i1 %4330, label %4428, label %4422

4422:                                             ; preds = %4421
  %4423 = mul nsw i64 %4404, %358
  %4424 = add i64 %4327, %4423
  %4425 = trunc i64 %4424 to i32
  %4426 = shl i32 %4425, 8
  %4427 = getelementptr inbounds i16, i16* %284, i32 %4426
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %4427, i16 zeroext 0, i8 zeroext %3658, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %4468

4428:                                             ; preds = %4421
  br i1 %3690, label %4468, label %4429

4429:                                             ; preds = %4428, %4429
  %4430 = phi i64 [ %4442, %4429 ], [ 0, %4428 ]
  %4431 = mul i64 %4331, %4430
  %4432 = add nsw i64 %4431, %248
  %4433 = trunc i64 %4432 to i32
  %4434 = getelementptr inbounds i16, i16* %328, i32 %4433
  %4435 = add i64 %4430, %4404
  %4436 = mul i64 %4435, %358
  %4437 = add i64 %4436, %4288
  %4438 = shl i64 %4437, 8
  %4439 = add i64 %3662, %4438
  %4440 = trunc i64 %4439 to i32
  %4441 = getelementptr inbounds i16, i16* %284, i32 %4440
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %4434, i16* %4441, i16 zeroext 0, i8 zeroext %3663, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %4442 = add nuw nsw i64 %4430, 1
  %4443 = icmp slt i64 %4442, %122
  br i1 %4443, label %4429, label %4468

4444:                                             ; preds = %4419
  %4445 = and i1 %4292, %4408
  br i1 %4445, label %4446, label %4468

4446:                                             ; preds = %4444
  br i1 %4326, label %4447, label %4454

4447:                                             ; preds = %4446
  %4448 = mul nsw i64 %4404, %358
  %4449 = add i64 %4327, %4448
  %4450 = trunc i64 %4449 to i32
  %4451 = shl i32 %4450, 8
  %4452 = getelementptr inbounds i16, i16* %284, i32 %4451
  %4453 = trunc i64 %4409 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %4452, i16 zeroext 0, i8 zeroext %4453, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %4468

4454:                                             ; preds = %4446, %4454
  %4455 = phi i64 [ %4466, %4454 ], [ 0, %4446 ]
  %4456 = mul nsw i64 %4455, %4291
  %4457 = trunc i64 %4456 to i32
  %4458 = shl i32 %4457, 8
  %4459 = getelementptr inbounds i16, i16* %328, i32 %4458
  %4460 = add i64 %4455, %4404
  %4461 = mul i64 %4460, %358
  %4462 = add i64 %4327, %4461
  %4463 = trunc i64 %4462 to i32
  %4464 = shl i32 %4463, 8
  %4465 = getelementptr inbounds i16, i16* %284, i32 %4464
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %4459, i16* %4465, i16 zeroext 0, i8 zeroext %4328, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %4466 = add nuw nsw i64 %4455, 1
  %4467 = icmp ult i64 %4466, %4409
  br i1 %4467, label %4454, label %4468

4468:                                             ; preds = %4454, %4429, %4428, %4444, %4447, %4422
  %4469 = and i1 %4306, %4408
  %4470 = and i1 %3664, %4469
  br i1 %4470, label %4471, label %4542

4471:                                             ; preds = %4468
  %4472 = trunc i64 %4416 to i8
  %4473 = trunc i64 %4415 to i8
  %4474 = trunc i64 %4412 to i16
  %4475 = icmp slt i64 %4409, %4307
  %4476 = trunc i64 %4409 to i8
  %4477 = select i1 %4475, i8 %4476, i8 1
  %4478 = zext i1 %4475 to i8
  %4479 = select i1 %4475, i64 %4307, i64 %4409
  %4480 = trunc i64 %4479 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %286, i8 zeroext %4472, i8 zeroext %4473, i16 signext %4332, i16 signext %4333, i16 zeroext %4474, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %4477, i8 zeroext %4478, i8 zeroext %4480, i32 0)
  %4481 = add nuw nsw i64 %4409, %4307
  %4482 = icmp eq i64 %4481, 2
  br i1 %4482, label %4542, label %4483

4483:                                             ; preds = %4471
  br i1 %4475, label %4512, label %4484

4484:                                             ; preds = %4483
  br i1 %4337, label %4485, label %4542

4485:                                             ; preds = %4484, %4485
  %4486 = phi i32 [ %4495, %4485 ], [ %4334, %4484 ]
  %4487 = phi i32 [ %4497, %4485 ], [ %4335, %4484 ]
  %4488 = phi i64 [ %4498, %4485 ], [ 0, %4484 ]
  %4489 = add i32 %4487, %3669
  %4490 = icmp slt i32 %170, %4489
  %4491 = zext i32 %4486 to i64
  %4492 = add nsw i64 %174, %4491
  %4493 = zext i1 %4490 to i64
  %4494 = add i64 %4492, %4493
  %4495 = trunc i64 %4494 to i32
  %4496 = select i1 %4490, i32 %3670, i32 0
  %4497 = sub i32 %4489, %4496
  %4498 = add nuw nsw i64 %4488, 1
  %4499 = mul nuw nsw i64 %4498, %4409
  %4500 = trunc i64 %4499 to i32
  %4501 = shl i32 %4500, 8
  %4502 = getelementptr inbounds i16, i16* %331, i32 %4501
  %4503 = mul nsw i32 %4497, %39
  %4504 = zext i32 %4503 to i64
  %4505 = sub i64 %4504, %244
  %4506 = trunc i64 %4505 to i16
  %4507 = mul nsw i32 %36, %4495
  %4508 = zext i32 %4507 to i64
  %4509 = sub i64 %4508, %3654
  %4510 = trunc i64 %4509 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %4502, i16* %286, i8 zeroext %4472, i8 zeroext %4473, i16 signext %4506, i16 signext %4510, i16 zeroext %4474, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %4476, i32 0)
  %4511 = icmp slt i64 %4498, %4336
  br i1 %4511, label %4485, label %4542

4512:                                             ; preds = %4483
  %4513 = add nsw i64 %4409, -1
  %4514 = icmp sgt i64 %4409, 1
  br i1 %4514, label %4515, label %4542

4515:                                             ; preds = %4512
  %4516 = trunc i64 %4412 to i32
  %4517 = trunc i64 %4416 to i32
  %4518 = trunc i64 %4415 to i32
  br label %4519

4519:                                             ; preds = %4515, %4519
  %4520 = phi i32 [ %4532, %4519 ], [ %4518, %4515 ]
  %4521 = phi i32 [ %4528, %4519 ], [ %4517, %4515 ]
  %4522 = phi i32 [ %4531, %4519 ], [ %4516, %4515 ]
  %4523 = phi i64 [ %4540, %4519 ], [ 0, %4515 ]
  %4524 = add nsw i32 %4521, 1
  %4525 = icmp eq i32 %4524, %27
  %4526 = zext i1 %4525 to i32
  %4527 = add nsw i32 %4520, %4526
  %4528 = select i1 %4525, i32 0, i32 %4524
  %4529 = icmp eq i32 %4527, %24
  %4530 = zext i1 %4529 to i32
  %4531 = add nsw i32 %4522, %4530
  %4532 = select i1 %4529, i32 0, i32 %4527
  %4533 = trunc i64 %4523 to i32
  %4534 = shl i32 %4533, 8
  %4535 = add i32 %4534, 256
  %4536 = getelementptr inbounds i16, i16* %331, i32 %4535
  %4537 = trunc i32 %4528 to i8
  %4538 = trunc i32 %4532 to i8
  %4539 = trunc i32 %4531 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %4536, i16* %286, i8 zeroext %4537, i8 zeroext %4538, i16 signext %4332, i16 signext %4333, i16 zeroext %4539, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %4476, i8 zeroext 1, i8 zeroext %4338, i32 0)
  %4540 = add nuw nsw i64 %4523, 1
  %4541 = icmp slt i64 %4540, %4513
  br i1 %4541, label %4519, label %4542

4542:                                             ; preds = %4485, %4519, %4484, %4512, %4471, %4468
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %4543 = icmp sle i64 %4401, %123
  %4544 = and i1 %3664, %4543
  %4545 = and i1 %4339, %4408
  %4546 = and i1 %4544, %4545
  br i1 %4546, label %4547, label %4563

4547:                                             ; preds = %4542
  %4548 = icmp sgt i64 %94, %4404
  %4549 = shl nsw i64 %4404, 4
  %4550 = sub nsw i64 %249, %4549
  %4551 = sub nsw i64 %4549, %249
  %4552 = select i1 %4548, i64 %4550, i64 %4551
  %4553 = icmp sgt i64 %4552, 0
  br i1 %4553, label %4554, label %4563

4554:                                             ; preds = %4547
  %4555 = shl nsw i64 %4409, 4
  %4556 = icmp slt i64 %4555, %4552
  %4557 = select i1 %4556, i64 %4555, i64 %4552
  %4558 = trunc i64 %4557 to i16
  %4559 = icmp eq i64 %4402, 0
  %4560 = icmp eq i64 %4401, %4403
  %4561 = and i1 %4559, %4560
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %331, i16* %328, i16 zeroext %4341, i16 zeroext %4558, i16 zeroext %4343, i1 zeroext %4561)
  br i1 %4350, label %4563, label %4562

4562:                                             ; preds = %4554
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %4563

4563:                                             ; preds = %4554, %4542, %4562, %4547
  %4564 = icmp slt i64 %4400, %250
  %4565 = and i1 %3671, %4564
  br i1 %4565, label %4566, label %4567

4566:                                             ; preds = %4563
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %4567

4567:                                             ; preds = %4566, %4563
  br i1 %4417, label %4569, label %4568

4568:                                             ; preds = %4567
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %4569

4569:                                             ; preds = %4567, %4568
  %4570 = or i64 %4401, 1
  %4571 = icmp slt i64 %4570, %245
  br i1 %4571, label %4572, label %4731

4572:                                             ; preds = %4569
  %4573 = sdiv i64 %4570, %126
  %4574 = mul nsw i64 %4573, %126
  %4575 = mul nsw i64 %4570, %122
  %4576 = sub nsw i64 %94, %4575
  %4577 = icmp sgt i64 %4576, %122
  %4578 = select i1 %4577, i64 %122, i64 %4576
  %4579 = icmp sgt i64 %4578, 0
  %4580 = select i1 %4579, i64 %4578, i64 0
  %4581 = freeze i64 %4575
  %4582 = freeze i64 %166
  %4583 = sdiv i64 %4581, %4582
  %4584 = mul i64 %4583, %4582
  %4585 = sub i64 %4581, %4584
  %4586 = sdiv i64 %4585, %93
  %4587 = srem i64 %4575, %93
  %4588 = and i1 %4290, %4577
  br i1 %4588, label %4589, label %4612

4589:                                             ; preds = %4572
  br i1 %4330, label %4596, label %4590

4590:                                             ; preds = %4589
  %4591 = mul nsw i64 %4575, %358
  %4592 = add i64 %4327, %4591
  %4593 = trunc i64 %4592 to i32
  %4594 = shl i32 %4593, 8
  %4595 = getelementptr inbounds i16, i16* %284, i32 %4594
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %4595, i16 zeroext 0, i8 zeroext %3658, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %4636

4596:                                             ; preds = %4589
  br i1 %3691, label %4636, label %4597

4597:                                             ; preds = %4596, %4597
  %4598 = phi i64 [ %4610, %4597 ], [ 0, %4596 ]
  %4599 = mul i64 %4331, %4598
  %4600 = add nsw i64 %4599, %248
  %4601 = trunc i64 %4600 to i32
  %4602 = getelementptr inbounds i16, i16* %332, i32 %4601
  %4603 = add i64 %4598, %4575
  %4604 = mul i64 %4603, %358
  %4605 = add i64 %4604, %4288
  %4606 = shl i64 %4605, 8
  %4607 = add i64 %3662, %4606
  %4608 = trunc i64 %4607 to i32
  %4609 = getelementptr inbounds i16, i16* %284, i32 %4608
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %4602, i16* %4609, i16 zeroext 0, i8 zeroext %3663, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %4610 = add nuw nsw i64 %4598, 1
  %4611 = icmp slt i64 %4610, %122
  br i1 %4611, label %4597, label %4636

4612:                                             ; preds = %4572
  %4613 = and i1 %4292, %4579
  br i1 %4613, label %4614, label %4636

4614:                                             ; preds = %4612
  br i1 %4326, label %4615, label %4622

4615:                                             ; preds = %4614
  %4616 = mul nsw i64 %4575, %358
  %4617 = add i64 %4327, %4616
  %4618 = trunc i64 %4617 to i32
  %4619 = shl i32 %4618, 8
  %4620 = getelementptr inbounds i16, i16* %284, i32 %4619
  %4621 = trunc i64 %4580 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %4620, i16 zeroext 0, i8 zeroext %4621, i16 zeroext %3656, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %4636

4622:                                             ; preds = %4614, %4622
  %4623 = phi i64 [ %4634, %4622 ], [ 0, %4614 ]
  %4624 = mul nsw i64 %4623, %4291
  %4625 = trunc i64 %4624 to i32
  %4626 = shl i32 %4625, 8
  %4627 = getelementptr inbounds i16, i16* %332, i32 %4626
  %4628 = add i64 %4623, %4575
  %4629 = mul i64 %4628, %358
  %4630 = add i64 %4327, %4629
  %4631 = trunc i64 %4630 to i32
  %4632 = shl i32 %4631, 8
  %4633 = getelementptr inbounds i16, i16* %284, i32 %4632
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %4627, i16* %4633, i16 zeroext 0, i8 zeroext %4328, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %4634 = add nuw nsw i64 %4623, 1
  %4635 = icmp ult i64 %4634, %4580
  br i1 %4635, label %4622, label %4636

4636:                                             ; preds = %4622, %4597, %4596, %4612, %4615, %4590
  %4637 = and i1 %4306, %4579
  %4638 = and i1 %3664, %4637
  br i1 %4638, label %4639, label %4710

4639:                                             ; preds = %4636
  %4640 = trunc i64 %4587 to i8
  %4641 = trunc i64 %4586 to i8
  %4642 = trunc i64 %4583 to i16
  %4643 = icmp slt i64 %4580, %4307
  %4644 = trunc i64 %4580 to i8
  %4645 = select i1 %4643, i8 %4644, i8 1
  %4646 = zext i1 %4643 to i8
  %4647 = select i1 %4643, i64 %4307, i64 %4580
  %4648 = trunc i64 %4647 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %286, i8 zeroext %4640, i8 zeroext %4641, i16 signext %4332, i16 signext %4333, i16 zeroext %4642, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %4645, i8 zeroext %4646, i8 zeroext %4648, i32 0)
  %4649 = add nuw nsw i64 %4580, %4307
  %4650 = icmp eq i64 %4649, 2
  br i1 %4650, label %4710, label %4651

4651:                                             ; preds = %4639
  br i1 %4643, label %4680, label %4652

4652:                                             ; preds = %4651
  br i1 %4337, label %4653, label %4710

4653:                                             ; preds = %4652, %4653
  %4654 = phi i32 [ %4663, %4653 ], [ %4334, %4652 ]
  %4655 = phi i32 [ %4665, %4653 ], [ %4335, %4652 ]
  %4656 = phi i64 [ %4666, %4653 ], [ 0, %4652 ]
  %4657 = add i32 %4655, %3669
  %4658 = icmp slt i32 %170, %4657
  %4659 = zext i32 %4654 to i64
  %4660 = add nsw i64 %174, %4659
  %4661 = zext i1 %4658 to i64
  %4662 = add i64 %4660, %4661
  %4663 = trunc i64 %4662 to i32
  %4664 = select i1 %4658, i32 %3670, i32 0
  %4665 = sub i32 %4657, %4664
  %4666 = add nuw nsw i64 %4656, 1
  %4667 = mul nuw nsw i64 %4666, %4580
  %4668 = trunc i64 %4667 to i32
  %4669 = shl i32 %4668, 8
  %4670 = getelementptr inbounds i16, i16* %333, i32 %4669
  %4671 = mul nsw i32 %4665, %39
  %4672 = zext i32 %4671 to i64
  %4673 = sub i64 %4672, %244
  %4674 = trunc i64 %4673 to i16
  %4675 = mul nsw i32 %36, %4663
  %4676 = zext i32 %4675 to i64
  %4677 = sub i64 %4676, %3654
  %4678 = trunc i64 %4677 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %4670, i16* %286, i8 zeroext %4640, i8 zeroext %4641, i16 signext %4674, i16 signext %4678, i16 zeroext %4642, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %4644, i32 0)
  %4679 = icmp slt i64 %4666, %4336
  br i1 %4679, label %4653, label %4710

4680:                                             ; preds = %4651
  %4681 = add nsw i64 %4580, -1
  %4682 = icmp sgt i64 %4580, 1
  br i1 %4682, label %4683, label %4710

4683:                                             ; preds = %4680
  %4684 = trunc i64 %4583 to i32
  %4685 = trunc i64 %4587 to i32
  %4686 = trunc i64 %4586 to i32
  br label %4687

4687:                                             ; preds = %4683, %4687
  %4688 = phi i32 [ %4700, %4687 ], [ %4686, %4683 ]
  %4689 = phi i32 [ %4696, %4687 ], [ %4685, %4683 ]
  %4690 = phi i32 [ %4699, %4687 ], [ %4684, %4683 ]
  %4691 = phi i64 [ %4708, %4687 ], [ 0, %4683 ]
  %4692 = add nsw i32 %4689, 1
  %4693 = icmp eq i32 %4692, %27
  %4694 = zext i1 %4693 to i32
  %4695 = add nsw i32 %4688, %4694
  %4696 = select i1 %4693, i32 0, i32 %4692
  %4697 = icmp eq i32 %4695, %24
  %4698 = zext i1 %4697 to i32
  %4699 = add nsw i32 %4690, %4698
  %4700 = select i1 %4697, i32 0, i32 %4695
  %4701 = trunc i64 %4691 to i32
  %4702 = shl i32 %4701, 8
  %4703 = add i32 %4702, 256
  %4704 = getelementptr inbounds i16, i16* %333, i32 %4703
  %4705 = trunc i32 %4696 to i8
  %4706 = trunc i32 %4700 to i8
  %4707 = trunc i32 %4699 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %4704, i16* %286, i8 zeroext %4705, i8 zeroext %4706, i16 signext %4332, i16 signext %4333, i16 zeroext %4707, i8 zeroext %3665, i8 zeroext %3666, i8 zeroext %3667, i8 zeroext %3668, i8 zeroext 1, i8 zeroext 1, i8 zeroext %4644, i8 zeroext 1, i8 zeroext %4338, i32 0)
  %4708 = add nuw nsw i64 %4691, 1
  %4709 = icmp slt i64 %4708, %4681
  br i1 %4709, label %4687, label %4710

4710:                                             ; preds = %4653, %4687, %4652, %4680, %4639, %4636
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %4711 = icmp sle i64 %4570, %123
  %4712 = and i1 %3664, %4711
  %4713 = and i1 %4339, %4579
  %4714 = and i1 %4712, %4713
  br i1 %4714, label %4715, label %4731

4715:                                             ; preds = %4710
  %4716 = icmp sgt i64 %94, %4575
  %4717 = shl nsw i64 %4575, 4
  %4718 = sub nsw i64 %249, %4717
  %4719 = sub nsw i64 %4717, %249
  %4720 = select i1 %4716, i64 %4718, i64 %4719
  %4721 = icmp sgt i64 %4720, 0
  br i1 %4721, label %4722, label %4731

4722:                                             ; preds = %4715
  %4723 = shl nsw i64 %4580, 4
  %4724 = icmp slt i64 %4723, %4720
  %4725 = select i1 %4724, i64 %4723, i64 %4720
  %4726 = trunc i64 %4725 to i16
  %4727 = icmp eq i64 %4573, 0
  %4728 = icmp eq i64 %4570, %4574
  %4729 = and i1 %4727, %4728
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %333, i16* %332, i16 zeroext %4341, i16 zeroext %4726, i16 zeroext %4343, i1 zeroext %4729)
  br i1 %4353, label %4731, label %4730

4730:                                             ; preds = %4722
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %4731

4731:                                             ; preds = %4722, %4710, %4715, %4730, %4569
  br i1 %4565, label %4732, label %4733

4732:                                             ; preds = %4731
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %4733

4733:                                             ; preds = %4732, %4731
  %4734 = add nuw nsw i64 %4400, 1
  %4735 = icmp slt i64 %4734, %247
  br i1 %4735, label %4399, label %4354

4736:                                             ; preds = %4355, %4854
  %4737 = phi i64 [ 0, %4355 ], [ %4855, %4854 ]
  %4738 = mul nsw i64 %4737, %3673
  %4739 = sub nsw i64 %87, %4738
  %4740 = sub i64 %4739, %4288
  %4741 = icmp sgt i64 %4740, %3673
  %4742 = select i1 %4741, i64 %3673, i64 %4740
  %4743 = icmp sgt i64 %4742, 0
  %4744 = select i1 %4743, i64 %4742, i64 0
  %4745 = icmp eq i64 %4737, 0
  br i1 %4745, label %4747, label %4746

4746:                                             ; preds = %4736
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %4747

4747:                                             ; preds = %4736, %4746
  br i1 %3664, label %4748, label %4849

4748:                                             ; preds = %4747
  %4749 = and i1 %4304, %4741
  br i1 %4749, label %4750, label %4770

4750:                                             ; preds = %4748
  br i1 %4392, label %4756, label %4751

4751:                                             ; preds = %4750
  %4752 = mul nsw i64 %4738, %4302
  %4753 = trunc i64 %4752 to i32
  %4754 = shl i32 %4753, 4
  %4755 = getelementptr inbounds float, float* %337, i32 %4754
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %4755, i8 zeroext 0, i16 zeroext %3676, i16 zeroext %3675, i16 zeroext %4371, i16 zeroext %4373, i32 1)
  br label %4791

4756:                                             ; preds = %4750
  br i1 %3674, label %4757, label %4791

4757:                                             ; preds = %4756
  %4758 = mul nsw i64 %4738, %4302
  %4759 = shl nsw i64 %4758, 4
  br label %4760

4760:                                             ; preds = %4757, %4760
  %4761 = phi i64 [ 0, %4757 ], [ %4768, %4760 ]
  %4762 = mul i64 %4357, %4761
  %4763 = trunc i64 %4762 to i32
  %4764 = getelementptr inbounds i16, i16* %336, i32 %4763
  %4765 = add nsw i64 %4762, %4759
  %4766 = trunc i64 %4765 to i32
  %4767 = getelementptr inbounds float, float* %337, i32 %4766
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %4764, float* %4767, i8 zeroext 0, i16 zeroext 1, i16 zeroext %3675, i16 zeroext 0, i16 zeroext 0, i32 1)
  %4768 = add nuw nsw i64 %4761, 1
  %4769 = icmp slt i64 %4768, %3673
  br i1 %4769, label %4760, label %4791

4770:                                             ; preds = %4748
  %4771 = and i1 %4306, %4743
  br i1 %4771, label %4772, label %4791

4772:                                             ; preds = %4770
  %4773 = mul nsw i64 %4738, %4302
  br i1 %4391, label %4779, label %4774

4774:                                             ; preds = %4772
  %4775 = trunc i64 %4773 to i32
  %4776 = shl i32 %4775, 4
  %4777 = getelementptr inbounds float, float* %337, i32 %4776
  %4778 = trunc i64 %4744 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %4777, i8 zeroext 0, i16 zeroext %4778, i16 zeroext %4362, i16 zeroext %4364, i16 zeroext %4367, i32 1)
  br label %4791

4779:                                             ; preds = %4772
  %4780 = shl nsw i64 %4773, 4
  br label %4781

4781:                                             ; preds = %4779, %4781
  %4782 = phi i64 [ 0, %4779 ], [ %4789, %4781 ]
  %4783 = mul i64 %4357, %4782
  %4784 = trunc i64 %4783 to i32
  %4785 = getelementptr inbounds i16, i16* %336, i32 %4784
  %4786 = add nsw i64 %4783, %4780
  %4787 = trunc i64 %4786 to i32
  %4788 = getelementptr inbounds float, float* %337, i32 %4787
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %4785, float* %4788, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4362, i16 zeroext 0, i16 zeroext 0, i32 1)
  %4789 = add nuw nsw i64 %4782, 1
  %4790 = icmp ult i64 %4789, %4744
  br i1 %4790, label %4781, label %4791

4791:                                             ; preds = %4781, %4760, %4756, %4751, %4774, %4770
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %4377, label %4850, label %4792

4792:                                             ; preds = %4791
  %4793 = and i1 %4315, %4741
  br i1 %4793, label %4794, label %4822

4794:                                             ; preds = %4792
  br i1 %4398, label %4803, label %4795

4795:                                             ; preds = %4794
  %4796 = add i64 %4738, %4288
  %4797 = add i64 %4796, %3679
  %4798 = mul i64 %3680, %4797
  %4799 = add nsw i64 %4798, %4381
  %4800 = trunc i64 %4799 to i32
  %4801 = getelementptr inbounds i16, i16* %2, i32 %4800
  %4802 = bitcast i16* %4801 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4802, i8* %3681, i8 zeroext 0, i16 zeroext %3676, i16 zeroext %3684, i16 zeroext %4390, i16 zeroext %3685)
  br label %4850

4803:                                             ; preds = %4794
  br i1 %3674, label %4804, label %4850

4804:                                             ; preds = %4803
  %4805 = add i64 %4738, %4288
  %4806 = add i64 %4805, %3679
  br label %4807

4807:                                             ; preds = %4804, %4807
  %4808 = phi i64 [ 0, %4804 ], [ %4820, %4807 ]
  %4809 = add i64 %4806, %4808
  %4810 = mul i64 %3680, %4809
  %4811 = add i64 %4810, %4381
  %4812 = trunc i64 %4811 to i32
  %4813 = getelementptr inbounds i16, i16* %2, i32 %4812
  %4814 = bitcast i16* %4813 to i8*
  %4815 = mul nsw i64 %4808, %4302
  %4816 = trunc i64 %4815 to i32
  %4817 = shl i32 %4816, 4
  %4818 = getelementptr inbounds i16, i16* %336, i32 %4817
  %4819 = bitcast i16* %4818 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4814, i8* %4819, i8 zeroext 0, i16 zeroext 1, i16 zeroext %3684, i16 zeroext 0, i16 zeroext 0)
  %4820 = add nuw nsw i64 %4808, 1
  %4821 = icmp slt i64 %4820, %3673
  br i1 %4821, label %4807, label %4850

4822:                                             ; preds = %4792
  %4823 = and i1 %4317, %4743
  br i1 %4823, label %4824, label %4850

4824:                                             ; preds = %4822
  %4825 = add i64 %4738, %4288
  %4826 = add i64 %4825, %3679
  br i1 %4396, label %4834, label %4827

4827:                                             ; preds = %4824
  %4828 = mul i64 %3680, %4826
  %4829 = add nsw i64 %4828, %4381
  %4830 = trunc i64 %4829 to i32
  %4831 = getelementptr inbounds i16, i16* %2, i32 %4830
  %4832 = bitcast i16* %4831 to i8*
  %4833 = trunc i64 %4744 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4832, i8* %3681, i8 zeroext 0, i16 zeroext %4833, i16 zeroext %4382, i16 zeroext %4383, i16 zeroext %4384)
  br label %4850

4834:                                             ; preds = %4824, %4834
  %4835 = phi i64 [ %4847, %4834 ], [ 0, %4824 ]
  %4836 = add i64 %4826, %4835
  %4837 = mul i64 %3680, %4836
  %4838 = add i64 %4837, %4381
  %4839 = trunc i64 %4838 to i32
  %4840 = getelementptr inbounds i16, i16* %2, i32 %4839
  %4841 = bitcast i16* %4840 to i8*
  %4842 = mul nsw i64 %4835, %4302
  %4843 = trunc i64 %4842 to i32
  %4844 = shl i32 %4843, 4
  %4845 = getelementptr inbounds i16, i16* %336, i32 %4844
  %4846 = bitcast i16* %4845 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %4841, i8* %4846, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4382, i16 zeroext 0, i16 zeroext 0)
  %4847 = add nuw nsw i64 %4835, 1
  %4848 = icmp ult i64 %4847, %4744
  br i1 %4848, label %4834, label %4850

4849:                                             ; preds = %4747
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %4850

4850:                                             ; preds = %4834, %4807, %4803, %4791, %4849, %4795, %4827, %4822
  %4851 = icmp slt i64 %4737, %258
  %4852 = and i1 %3686, %4851
  br i1 %4852, label %4853, label %4854

4853:                                             ; preds = %4850
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %4854

4854:                                             ; preds = %4853, %4850
  %4855 = add nuw nsw i64 %4737, 1
  %4856 = icmp slt i64 %4855, %257
  br i1 %4856, label %4736, label %4857

4857:                                             ; preds = %4854, %4354, %4280
  br i1 %4155, label %4858, label %4859

4858:                                             ; preds = %4857
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %4859

4859:                                             ; preds = %4858, %4857
  %4860 = add nuw nsw i64 %3694, 1
  %4861 = icmp slt i64 %4860, %238
  br i1 %4861, label %3693, label %3692

4862:                                             ; preds = %3692
  %4863 = add nsw i64 %460, %184
  %4864 = add nsw i64 %461, %200
  %4865 = add nsw i64 %4864, 1
  %4866 = mul i64 %464, %4865
  %4867 = add nsw i64 %4866, -1
  %4868 = mul nsw i64 %4864, %198
  %4869 = mul i64 %178, %4868
  %4870 = sdiv i64 %4869, %105
  %4871 = mul nsw i64 %4870, %301
  %4872 = sub nsw i64 %4871, %477
  br i1 %3635, label %4873, label %6098

4873:                                             ; preds = %4862
  %4874 = freeze i64 %4867
  %4875 = freeze i64 %105
  %4876 = sdiv i64 %4874, %4875
  %4877 = mul i64 %4876, %4875
  %4878 = sub i64 %4874, %4877
  %4879 = ashr i64 %4878, 63
  %4880 = add nsw i64 %4879, %4876
  %4881 = mul nsw i64 %4880, %301
  %4882 = add i64 %112, %4881
  %4883 = mul nsw i64 %4870, %172
  %4884 = icmp slt i64 %4872, 0
  %4885 = sub nsw i64 0, %4872
  %4886 = sub nsw i64 %4882, %4871
  %4887 = icmp sgt i64 %4886, %4885
  %4888 = select i1 %4887, i64 %4885, i64 %4886
  %4889 = select i1 %4884, i64 %4888, i64 0
  %4890 = icmp slt i64 %4889, %477
  %4891 = select i1 %4890, i64 %4889, i64 %477
  %4892 = icmp sgt i64 %245, 0
  %4893 = trunc i64 %358 to i16
  %4894 = icmp sgt i32 %159, 1
  %4895 = trunc i32 %78 to i8
  %4896 = icmp slt i64 %164, 1
  %4897 = icmp slt i32 %78, 1
  %4898 = shl nsw i64 %357, 8
  %4899 = sub i64 %248, %4898
  %4900 = trunc i64 %164 to i8
  %4901 = icmp slt i64 %4863, %181
  %4902 = trunc i32 %39 to i8
  %4903 = trunc i32 %36 to i8
  %4904 = trunc i32 %27 to i8
  %4905 = trunc i32 %24 to i8
  %4906 = trunc i64 %176 to i32
  %4907 = trunc i64 %172 to i32
  %4908 = icmp ne i64 %247, 1
  %4909 = icmp sgt i32 %72, 0
  %4910 = sext i32 %69 to i64
  %4911 = icmp sgt i32 %69, 0
  %4912 = trunc i64 %253 to i16
  %4913 = trunc i32 %69 to i16
  %4914 = icmp sgt i64 %4864, %195
  %4915 = icmp sgt i32 %119, 65534
  %4916 = mul nsw i64 %4863, %87
  %4917 = shl nsw i64 %120, 4
  %4918 = inttoptr i32 %335 to i8*
  %4919 = icmp slt i32 %119, 65535
  %4920 = icmp sgt i64 %256, -1
  %4921 = trunc i64 %178 to i16
  %4922 = trunc i64 %256 to i16
  %4923 = icmp ne i32 %72, 1
  %4924 = icmp ne i64 %238, 1
  %4925 = or i1 %4896, %4897
  %4926 = or i1 %4896, %4897
  %4927 = or i1 %4896, %4897
  %4928 = or i1 %4896, %4897
  br label %4929

4929:                                             ; preds = %4873, %6095
  %4930 = phi i64 [ 0, %4873 ], [ %6096, %6095 ]
  %4931 = shl nuw nsw i64 %4930, 1
  %4932 = sdiv i64 %4931, %198
  %4933 = mul nsw i64 %4932, %198
  %4934 = sub nsw i64 %4931, %4933
  %4935 = add nsw i64 %4932, %351
  %4936 = mul nsw i64 %4935, %160
  %4937 = sub nsw i64 %87, %4936
  %4938 = icmp sgt i64 %4937, %160
  %4939 = select i1 %4938, i64 %160, i64 %4937
  %4940 = icmp sgt i64 %4939, 0
  %4941 = select i1 %4940, i64 %4939, i64 0
  %4942 = add nsw i64 %4934, %4868
  %4943 = add nsw i64 %4942, 1
  %4944 = mul nsw i64 %4943, %177
  %4945 = icmp slt i64 %4944, %240
  %4946 = select i1 %4945, i64 %4944, i64 %240
  %4947 = shl nsw i64 %4946, 4
  %4948 = mul nsw i64 %4942, %177
  %4949 = shl nsw i64 %4948, 4
  %4950 = sub nsw i64 %4947, %4949
  %4951 = sub nsw i64 %240, %4948
  %4952 = icmp sgt i64 %4951, %177
  %4953 = select i1 %4952, i64 %177, i64 %4951
  %4954 = icmp sgt i64 %4953, 0
  %4955 = select i1 %4954, i64 %4953, i64 0
  %4956 = sub nsw i64 %4949, %4883
  %4957 = freeze i64 %4956
  %4958 = freeze i64 %172
  %4959 = sdiv i64 %4957, %4958
  %4960 = mul i64 %4959, %4958
  %4961 = sub i64 %4957, %4960
  %4962 = mul nsw i64 %4959, %301
  %4963 = sub nsw i64 %4962, %4891
  %4964 = mul nsw i64 %4961, %150
  %4965 = sub nsw i64 %4964, %244
  %4966 = sub nsw i64 %120, %4949
  %4967 = icmp slt i64 %178, %4966
  %4968 = select i1 %4967, i64 %178, i64 %4966
  %4969 = icmp sgt i64 %4968, 0
  %4970 = select i1 %4969, i64 %4968, i64 0
  %4971 = icmp eq i64 %4930, 0
  br i1 %4971, label %4973, label %4972

4972:                                             ; preds = %4929
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %4973

4973:                                             ; preds = %4929, %4972
  br i1 %4892, label %4974, label %5005

4974:                                             ; preds = %4973
  %4975 = icmp slt i64 %4941, 2
  %4976 = icmp slt i64 %4939, 2
  %4977 = and i1 %4976, %4975
  %4978 = mul i64 %4932, %160
  %4979 = trunc i64 %4941 to i8
  %4980 = icmp sgt i64 %4939, 1
  %4981 = or i1 %4894, %4980
  %4982 = shl i64 %4939, 8
  %4983 = trunc i64 %4965 to i16
  %4984 = trunc i64 %4963 to i16
  %4985 = trunc i64 %4959 to i32
  %4986 = trunc i64 %4961 to i32
  %4987 = add nsw i64 %4955, -1
  %4988 = icmp sgt i64 %4955, 1
  %4989 = trunc i64 %4955 to i8
  %4990 = and i1 %4940, %4954
  %4991 = trunc i64 %4955 to i16
  %4992 = shl i16 %4991, 4
  %4993 = trunc i64 %4941 to i16
  %4994 = shl i16 %4993, 4
  %4995 = icmp sgt i64 %4955, 4
  %4996 = icmp sgt i64 %4941, 1
  %4997 = icmp sgt i64 %4955, 2
  %4998 = icmp sgt i64 %4941, 2
  %4999 = and i1 %4996, %4995
  %5000 = and i1 %4998, %4997
  %5001 = or i1 %4999, %5000
  %5002 = and i1 %4996, %4995
  %5003 = and i1 %4998, %4997
  %5004 = or i1 %5002, %5003
  br label %5006

5005:                                             ; preds = %5340, %4973
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br i1 %4971, label %5344, label %5343

5006:                                             ; preds = %4974, %5340
  %5007 = phi i64 [ 0, %4974 ], [ %5341, %5340 ]
  %5008 = shl nuw nsw i64 %5007, 1
  %5009 = sdiv i64 %5008, %126
  %5010 = mul nsw i64 %5009, %126
  %5011 = mul nsw i64 %5008, %122
  %5012 = sub nsw i64 %94, %5011
  %5013 = icmp sgt i64 %5012, %122
  %5014 = select i1 %5013, i64 %122, i64 %5012
  %5015 = icmp sgt i64 %5014, 0
  %5016 = select i1 %5015, i64 %5014, i64 0
  %5017 = freeze i64 %5011
  %5018 = freeze i64 %166
  %5019 = sdiv i64 %5017, %5018
  %5020 = mul i64 %5019, %5018
  %5021 = sub i64 %5017, %5020
  %5022 = sdiv i64 %5021, %93
  %5023 = srem i64 %5011, %93
  %5024 = icmp eq i64 %5007, 0
  br i1 %5024, label %5026, label %5025

5025:                                             ; preds = %5006
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %5026

5026:                                             ; preds = %5006, %5025
  %5027 = and i1 %4938, %5013
  br i1 %5027, label %5028, label %5051

5028:                                             ; preds = %5026
  br i1 %4981, label %5035, label %5029

5029:                                             ; preds = %5028
  %5030 = mul nsw i64 %5011, %358
  %5031 = add i64 %4978, %5030
  %5032 = trunc i64 %5031 to i32
  %5033 = shl i32 %5032, 8
  %5034 = getelementptr inbounds i16, i16* %284, i32 %5033
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %5034, i16 zeroext 0, i8 zeroext %4895, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5075

5035:                                             ; preds = %5028
  br i1 %4925, label %5075, label %5036

5036:                                             ; preds = %5035, %5036
  %5037 = phi i64 [ %5049, %5036 ], [ 0, %5035 ]
  %5038 = mul i64 %4982, %5037
  %5039 = add nsw i64 %5038, %248
  %5040 = trunc i64 %5039 to i32
  %5041 = getelementptr inbounds i16, i16* %328, i32 %5040
  %5042 = add i64 %5037, %5011
  %5043 = mul i64 %5042, %358
  %5044 = add i64 %5043, %4936
  %5045 = shl i64 %5044, 8
  %5046 = add i64 %4899, %5045
  %5047 = trunc i64 %5046 to i32
  %5048 = getelementptr inbounds i16, i16* %284, i32 %5047
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5041, i16* %5048, i16 zeroext 0, i8 zeroext %4900, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5049 = add nuw nsw i64 %5037, 1
  %5050 = icmp slt i64 %5049, %122
  br i1 %5050, label %5036, label %5075

5051:                                             ; preds = %5026
  %5052 = and i1 %4940, %5015
  br i1 %5052, label %5053, label %5075

5053:                                             ; preds = %5051
  br i1 %4977, label %5054, label %5061

5054:                                             ; preds = %5053
  %5055 = mul nsw i64 %5011, %358
  %5056 = add i64 %4978, %5055
  %5057 = trunc i64 %5056 to i32
  %5058 = shl i32 %5057, 8
  %5059 = getelementptr inbounds i16, i16* %284, i32 %5058
  %5060 = trunc i64 %5016 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %5059, i16 zeroext 0, i8 zeroext %5060, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5075

5061:                                             ; preds = %5053, %5061
  %5062 = phi i64 [ %5073, %5061 ], [ 0, %5053 ]
  %5063 = mul nsw i64 %5062, %4939
  %5064 = trunc i64 %5063 to i32
  %5065 = shl i32 %5064, 8
  %5066 = getelementptr inbounds i16, i16* %328, i32 %5065
  %5067 = add i64 %5062, %5011
  %5068 = mul i64 %5067, %358
  %5069 = add i64 %4978, %5068
  %5070 = trunc i64 %5069 to i32
  %5071 = shl i32 %5070, 8
  %5072 = getelementptr inbounds i16, i16* %284, i32 %5071
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5066, i16* %5072, i16 zeroext 0, i8 zeroext %4979, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5073 = add nuw nsw i64 %5062, 1
  %5074 = icmp ult i64 %5073, %5016
  br i1 %5074, label %5061, label %5075

5075:                                             ; preds = %5061, %5036, %5035, %5051, %5054, %5029
  %5076 = and i1 %4954, %5015
  %5077 = and i1 %4901, %5076
  br i1 %5077, label %5078, label %5149

5078:                                             ; preds = %5075
  %5079 = trunc i64 %5023 to i8
  %5080 = trunc i64 %5022 to i8
  %5081 = trunc i64 %5019 to i16
  %5082 = icmp slt i64 %5016, %4955
  %5083 = trunc i64 %5016 to i8
  %5084 = select i1 %5082, i8 %5083, i8 1
  %5085 = zext i1 %5082 to i8
  %5086 = select i1 %5082, i64 %4955, i64 %5016
  %5087 = trunc i64 %5086 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %312, i8 zeroext %5079, i8 zeroext %5080, i16 signext %4983, i16 signext %4984, i16 zeroext %5081, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5084, i8 zeroext %5085, i8 zeroext %5087, i32 0)
  %5088 = add nuw nsw i64 %5016, %4955
  %5089 = icmp eq i64 %5088, 2
  br i1 %5089, label %5149, label %5090

5090:                                             ; preds = %5078
  br i1 %5082, label %5119, label %5091

5091:                                             ; preds = %5090
  br i1 %4988, label %5092, label %5149

5092:                                             ; preds = %5091, %5092
  %5093 = phi i64 [ %5105, %5092 ], [ 0, %5091 ]
  %5094 = phi i32 [ %5102, %5092 ], [ %4985, %5091 ]
  %5095 = phi i32 [ %5104, %5092 ], [ %4986, %5091 ]
  %5096 = add i32 %5095, %4906
  %5097 = icmp slt i32 %170, %5096
  %5098 = zext i32 %5094 to i64
  %5099 = add nsw i64 %174, %5098
  %5100 = zext i1 %5097 to i64
  %5101 = add i64 %5099, %5100
  %5102 = trunc i64 %5101 to i32
  %5103 = select i1 %5097, i32 %4907, i32 0
  %5104 = sub i32 %5096, %5103
  %5105 = add nuw nsw i64 %5093, 1
  %5106 = mul nuw nsw i64 %5105, %5016
  %5107 = trunc i64 %5106 to i32
  %5108 = shl i32 %5107, 8
  %5109 = getelementptr inbounds i16, i16* %331, i32 %5108
  %5110 = mul nsw i32 %5104, %39
  %5111 = zext i32 %5110 to i64
  %5112 = sub i64 %5111, %244
  %5113 = trunc i64 %5112 to i16
  %5114 = mul nsw i32 %36, %5102
  %5115 = zext i32 %5114 to i64
  %5116 = sub i64 %5115, %4891
  %5117 = trunc i64 %5116 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5109, i16* %312, i8 zeroext %5079, i8 zeroext %5080, i16 signext %5113, i16 signext %5117, i16 zeroext %5081, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %5083, i32 0)
  %5118 = icmp slt i64 %5105, %4987
  br i1 %5118, label %5092, label %5149

5119:                                             ; preds = %5090
  %5120 = add nsw i64 %5016, -1
  %5121 = icmp sgt i64 %5016, 1
  br i1 %5121, label %5122, label %5149

5122:                                             ; preds = %5119
  %5123 = trunc i64 %5019 to i32
  %5124 = trunc i64 %5023 to i32
  %5125 = trunc i64 %5022 to i32
  br label %5126

5126:                                             ; preds = %5122, %5126
  %5127 = phi i64 [ %5147, %5126 ], [ 0, %5122 ]
  %5128 = phi i32 [ %5139, %5126 ], [ %5125, %5122 ]
  %5129 = phi i32 [ %5135, %5126 ], [ %5124, %5122 ]
  %5130 = phi i32 [ %5138, %5126 ], [ %5123, %5122 ]
  %5131 = add nsw i32 %5129, 1
  %5132 = icmp eq i32 %5131, %27
  %5133 = zext i1 %5132 to i32
  %5134 = add nsw i32 %5128, %5133
  %5135 = select i1 %5132, i32 0, i32 %5131
  %5136 = icmp eq i32 %5134, %24
  %5137 = zext i1 %5136 to i32
  %5138 = add nsw i32 %5130, %5137
  %5139 = select i1 %5136, i32 0, i32 %5134
  %5140 = trunc i64 %5127 to i32
  %5141 = shl i32 %5140, 8
  %5142 = add i32 %5141, 256
  %5143 = getelementptr inbounds i16, i16* %331, i32 %5142
  %5144 = trunc i32 %5135 to i8
  %5145 = trunc i32 %5139 to i8
  %5146 = trunc i32 %5138 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5143, i16* %312, i8 zeroext %5144, i8 zeroext %5145, i16 signext %4983, i16 signext %4984, i16 zeroext %5146, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5083, i8 zeroext 1, i8 zeroext %4989, i32 0)
  %5147 = add nuw nsw i64 %5127, 1
  %5148 = icmp slt i64 %5147, %5120
  br i1 %5148, label %5126, label %5149

5149:                                             ; preds = %5092, %5126, %5091, %5119, %5078, %5075
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %5150 = icmp sle i64 %5008, %123
  %5151 = and i1 %4901, %5150
  %5152 = and i1 %4990, %5015
  %5153 = and i1 %5151, %5152
  br i1 %5153, label %5154, label %5170

5154:                                             ; preds = %5149
  %5155 = icmp sgt i64 %94, %5011
  %5156 = shl nsw i64 %5011, 4
  %5157 = sub nsw i64 %249, %5156
  %5158 = sub nsw i64 %5156, %249
  %5159 = select i1 %5155, i64 %5157, i64 %5158
  %5160 = icmp sgt i64 %5159, 0
  br i1 %5160, label %5161, label %5170

5161:                                             ; preds = %5154
  %5162 = shl nsw i64 %5016, 4
  %5163 = icmp slt i64 %5162, %5159
  %5164 = select i1 %5163, i64 %5162, i64 %5159
  %5165 = trunc i64 %5164 to i16
  %5166 = icmp eq i64 %5009, 0
  %5167 = icmp eq i64 %5008, %5010
  %5168 = and i1 %5166, %5167
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %331, i16* %328, i16 zeroext %4992, i16 zeroext %5165, i16 zeroext %4994, i1 zeroext %5168)
  br i1 %5001, label %5170, label %5169

5169:                                             ; preds = %5161
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %5170

5170:                                             ; preds = %5161, %5149, %5169, %5154
  %5171 = icmp slt i64 %5007, %250
  %5172 = and i1 %4908, %5171
  br i1 %5172, label %5173, label %5174

5173:                                             ; preds = %5170
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %5174

5174:                                             ; preds = %5173, %5170
  br i1 %5024, label %5176, label %5175

5175:                                             ; preds = %5174
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %5176

5176:                                             ; preds = %5174, %5175
  %5177 = or i64 %5008, 1
  %5178 = icmp slt i64 %5177, %245
  br i1 %5178, label %5179, label %5338

5179:                                             ; preds = %5176
  %5180 = sdiv i64 %5177, %126
  %5181 = mul nsw i64 %5180, %126
  %5182 = mul nsw i64 %5177, %122
  %5183 = sub nsw i64 %94, %5182
  %5184 = icmp sgt i64 %5183, %122
  %5185 = select i1 %5184, i64 %122, i64 %5183
  %5186 = icmp sgt i64 %5185, 0
  %5187 = select i1 %5186, i64 %5185, i64 0
  %5188 = freeze i64 %5182
  %5189 = freeze i64 %166
  %5190 = sdiv i64 %5188, %5189
  %5191 = mul i64 %5190, %5189
  %5192 = sub i64 %5188, %5191
  %5193 = sdiv i64 %5192, %93
  %5194 = srem i64 %5182, %93
  %5195 = and i1 %4938, %5184
  br i1 %5195, label %5196, label %5219

5196:                                             ; preds = %5179
  br i1 %4981, label %5203, label %5197

5197:                                             ; preds = %5196
  %5198 = mul nsw i64 %5182, %358
  %5199 = add i64 %4978, %5198
  %5200 = trunc i64 %5199 to i32
  %5201 = shl i32 %5200, 8
  %5202 = getelementptr inbounds i16, i16* %284, i32 %5201
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %5202, i16 zeroext 0, i8 zeroext %4895, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5243

5203:                                             ; preds = %5196
  br i1 %4926, label %5243, label %5204

5204:                                             ; preds = %5203, %5204
  %5205 = phi i64 [ %5217, %5204 ], [ 0, %5203 ]
  %5206 = mul i64 %4982, %5205
  %5207 = add nsw i64 %5206, %248
  %5208 = trunc i64 %5207 to i32
  %5209 = getelementptr inbounds i16, i16* %332, i32 %5208
  %5210 = add i64 %5205, %5182
  %5211 = mul i64 %5210, %358
  %5212 = add i64 %5211, %4936
  %5213 = shl i64 %5212, 8
  %5214 = add i64 %4899, %5213
  %5215 = trunc i64 %5214 to i32
  %5216 = getelementptr inbounds i16, i16* %284, i32 %5215
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5209, i16* %5216, i16 zeroext 0, i8 zeroext %4900, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5217 = add nuw nsw i64 %5205, 1
  %5218 = icmp slt i64 %5217, %122
  br i1 %5218, label %5204, label %5243

5219:                                             ; preds = %5179
  %5220 = and i1 %4940, %5186
  br i1 %5220, label %5221, label %5243

5221:                                             ; preds = %5219
  br i1 %4977, label %5222, label %5229

5222:                                             ; preds = %5221
  %5223 = mul nsw i64 %5182, %358
  %5224 = add i64 %4978, %5223
  %5225 = trunc i64 %5224 to i32
  %5226 = shl i32 %5225, 8
  %5227 = getelementptr inbounds i16, i16* %284, i32 %5226
  %5228 = trunc i64 %5187 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %5227, i16 zeroext 0, i8 zeroext %5228, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5243

5229:                                             ; preds = %5221, %5229
  %5230 = phi i64 [ %5241, %5229 ], [ 0, %5221 ]
  %5231 = mul nsw i64 %5230, %4939
  %5232 = trunc i64 %5231 to i32
  %5233 = shl i32 %5232, 8
  %5234 = getelementptr inbounds i16, i16* %332, i32 %5233
  %5235 = add i64 %5230, %5182
  %5236 = mul i64 %5235, %358
  %5237 = add i64 %4978, %5236
  %5238 = trunc i64 %5237 to i32
  %5239 = shl i32 %5238, 8
  %5240 = getelementptr inbounds i16, i16* %284, i32 %5239
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5234, i16* %5240, i16 zeroext 0, i8 zeroext %4979, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5241 = add nuw nsw i64 %5230, 1
  %5242 = icmp ult i64 %5241, %5187
  br i1 %5242, label %5229, label %5243

5243:                                             ; preds = %5229, %5204, %5203, %5219, %5222, %5197
  %5244 = and i1 %4954, %5186
  %5245 = and i1 %4901, %5244
  br i1 %5245, label %5246, label %5317

5246:                                             ; preds = %5243
  %5247 = trunc i64 %5194 to i8
  %5248 = trunc i64 %5193 to i8
  %5249 = trunc i64 %5190 to i16
  %5250 = icmp slt i64 %5187, %4955
  %5251 = trunc i64 %5187 to i8
  %5252 = select i1 %5250, i8 %5251, i8 1
  %5253 = zext i1 %5250 to i8
  %5254 = select i1 %5250, i64 %4955, i64 %5187
  %5255 = trunc i64 %5254 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %312, i8 zeroext %5247, i8 zeroext %5248, i16 signext %4983, i16 signext %4984, i16 zeroext %5249, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5252, i8 zeroext %5253, i8 zeroext %5255, i32 0)
  %5256 = add nuw nsw i64 %5187, %4955
  %5257 = icmp eq i64 %5256, 2
  br i1 %5257, label %5317, label %5258

5258:                                             ; preds = %5246
  br i1 %5250, label %5287, label %5259

5259:                                             ; preds = %5258
  br i1 %4988, label %5260, label %5317

5260:                                             ; preds = %5259, %5260
  %5261 = phi i64 [ %5273, %5260 ], [ 0, %5259 ]
  %5262 = phi i32 [ %5270, %5260 ], [ %4985, %5259 ]
  %5263 = phi i32 [ %5272, %5260 ], [ %4986, %5259 ]
  %5264 = add i32 %5263, %4906
  %5265 = icmp slt i32 %170, %5264
  %5266 = zext i32 %5262 to i64
  %5267 = add nsw i64 %174, %5266
  %5268 = zext i1 %5265 to i64
  %5269 = add i64 %5267, %5268
  %5270 = trunc i64 %5269 to i32
  %5271 = select i1 %5265, i32 %4907, i32 0
  %5272 = sub i32 %5264, %5271
  %5273 = add nuw nsw i64 %5261, 1
  %5274 = mul nuw nsw i64 %5273, %5187
  %5275 = trunc i64 %5274 to i32
  %5276 = shl i32 %5275, 8
  %5277 = getelementptr inbounds i16, i16* %333, i32 %5276
  %5278 = mul nsw i32 %5272, %39
  %5279 = zext i32 %5278 to i64
  %5280 = sub i64 %5279, %244
  %5281 = trunc i64 %5280 to i16
  %5282 = mul nsw i32 %36, %5270
  %5283 = zext i32 %5282 to i64
  %5284 = sub i64 %5283, %4891
  %5285 = trunc i64 %5284 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5277, i16* %312, i8 zeroext %5247, i8 zeroext %5248, i16 signext %5281, i16 signext %5285, i16 zeroext %5249, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %5251, i32 0)
  %5286 = icmp slt i64 %5273, %4987
  br i1 %5286, label %5260, label %5317

5287:                                             ; preds = %5258
  %5288 = add nsw i64 %5187, -1
  %5289 = icmp sgt i64 %5187, 1
  br i1 %5289, label %5290, label %5317

5290:                                             ; preds = %5287
  %5291 = trunc i64 %5190 to i32
  %5292 = trunc i64 %5194 to i32
  %5293 = trunc i64 %5193 to i32
  br label %5294

5294:                                             ; preds = %5290, %5294
  %5295 = phi i64 [ %5315, %5294 ], [ 0, %5290 ]
  %5296 = phi i32 [ %5307, %5294 ], [ %5293, %5290 ]
  %5297 = phi i32 [ %5303, %5294 ], [ %5292, %5290 ]
  %5298 = phi i32 [ %5306, %5294 ], [ %5291, %5290 ]
  %5299 = add nsw i32 %5297, 1
  %5300 = icmp eq i32 %5299, %27
  %5301 = zext i1 %5300 to i32
  %5302 = add nsw i32 %5296, %5301
  %5303 = select i1 %5300, i32 0, i32 %5299
  %5304 = icmp eq i32 %5302, %24
  %5305 = zext i1 %5304 to i32
  %5306 = add nsw i32 %5298, %5305
  %5307 = select i1 %5304, i32 0, i32 %5302
  %5308 = trunc i64 %5295 to i32
  %5309 = shl i32 %5308, 8
  %5310 = add i32 %5309, 256
  %5311 = getelementptr inbounds i16, i16* %333, i32 %5310
  %5312 = trunc i32 %5303 to i8
  %5313 = trunc i32 %5307 to i8
  %5314 = trunc i32 %5306 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5311, i16* %312, i8 zeroext %5312, i8 zeroext %5313, i16 signext %4983, i16 signext %4984, i16 zeroext %5314, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5251, i8 zeroext 1, i8 zeroext %4989, i32 0)
  %5315 = add nuw nsw i64 %5295, 1
  %5316 = icmp slt i64 %5315, %5288
  br i1 %5316, label %5294, label %5317

5317:                                             ; preds = %5260, %5294, %5259, %5287, %5246, %5243
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %5318 = icmp sle i64 %5177, %123
  %5319 = and i1 %4901, %5318
  %5320 = and i1 %4990, %5186
  %5321 = and i1 %5319, %5320
  br i1 %5321, label %5322, label %5338

5322:                                             ; preds = %5317
  %5323 = icmp sgt i64 %94, %5182
  %5324 = shl nsw i64 %5182, 4
  %5325 = sub nsw i64 %249, %5324
  %5326 = sub nsw i64 %5324, %249
  %5327 = select i1 %5323, i64 %5325, i64 %5326
  %5328 = icmp sgt i64 %5327, 0
  br i1 %5328, label %5329, label %5338

5329:                                             ; preds = %5322
  %5330 = shl nsw i64 %5187, 4
  %5331 = icmp slt i64 %5330, %5327
  %5332 = select i1 %5331, i64 %5330, i64 %5327
  %5333 = trunc i64 %5332 to i16
  %5334 = icmp eq i64 %5180, 0
  %5335 = icmp eq i64 %5177, %5181
  %5336 = and i1 %5334, %5335
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %325, i16* %333, i16* %332, i16 zeroext %4992, i16 zeroext %5333, i16 zeroext %4994, i1 zeroext %5336)
  br i1 %5004, label %5338, label %5337

5337:                                             ; preds = %5329
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %5338

5338:                                             ; preds = %5329, %5317, %5322, %5337, %5176
  br i1 %5172, label %5339, label %5340

5339:                                             ; preds = %5338
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %5340

5340:                                             ; preds = %5339, %5338
  %5341 = add nuw nsw i64 %5007, 1
  %5342 = icmp slt i64 %5341, %247
  br i1 %5342, label %5006, label %5005

5343:                                             ; preds = %5005
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %5344

5344:                                             ; preds = %5005, %5343
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %4909, label %5345, label %5389

5345:                                             ; preds = %5344
  %5346 = icmp sgt i64 %4950, 1048559
  %5347 = shl i64 %4950, 4
  %5348 = and i64 %4955, 72057594037927935
  %5349 = shl nuw nsw i64 %5348, 8
  %5350 = sub nsw i64 %5347, %5349
  %5351 = icmp slt i64 %5350, -15
  %5352 = trunc i64 %4955 to i16
  %5353 = sdiv i64 %5350, 256
  %5354 = trunc i64 %5353 to i16
  %5355 = shl nuw nsw i64 %5348, 4
  %5356 = sub nsw i64 %4950, %5355
  %5357 = trunc i64 %5356 to i16
  %5358 = sub nsw i64 %5347, %254
  %5359 = icmp slt i64 %5358, -15
  %5360 = sdiv i64 %5358, 256
  %5361 = trunc i64 %5360 to i16
  %5362 = sub nsw i64 %4950, %255
  %5363 = trunc i64 %5362 to i16
  %5364 = icmp sgt i64 %4935, %188
  %5365 = icmp sgt i64 %4942, %193
  %5366 = or i1 %5364, %5365
  %5367 = or i1 %4914, %5366
  %5368 = icmp sgt i64 %4950, 65534
  %5369 = sub nsw i64 %120, %4970
  %5370 = sub nsw i64 %4950, %4970
  %5371 = shl nsw i64 %4948, 8
  %5372 = trunc i64 %4970 to i16
  %5373 = trunc i64 %5370 to i16
  %5374 = trunc i64 %5369 to i16
  %5375 = icmp slt i64 %4950, 65535
  %5376 = and i1 %4919, %5375
  %5377 = and i1 %4920, %5376
  %5378 = sub nsw i64 %4950, %178
  %5379 = icmp slt i64 %5378, 0
  %5380 = trunc i64 %5378 to i16
  %5381 = or i1 %5346, %5351
  %5382 = or i1 %5346, %5359
  %5383 = or i1 %4915, %5368
  %5384 = or i64 %5369, %5370
  %5385 = icmp slt i64 %5384, 0
  %5386 = or i1 %5385, %5383
  %5387 = xor i1 %5377, true
  %5388 = or i1 %5379, %5387
  br label %5392

5389:                                             ; preds = %5510, %5344
  %5390 = icmp slt i64 %4930, %259
  %5391 = and i1 %4924, %5390
  br i1 %5391, label %5513, label %5514

5392:                                             ; preds = %5345, %5510
  %5393 = phi i64 [ 0, %5345 ], [ %5511, %5510 ]
  %5394 = mul nsw i64 %5393, %4910
  %5395 = sub nsw i64 %87, %5394
  %5396 = sub i64 %5395, %4936
  %5397 = icmp sgt i64 %5396, %4910
  %5398 = select i1 %5397, i64 %4910, i64 %5396
  %5399 = icmp sgt i64 %5398, 0
  %5400 = select i1 %5399, i64 %5398, i64 0
  %5401 = icmp eq i64 %5393, 0
  br i1 %5401, label %5403, label %5402

5402:                                             ; preds = %5392
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %5403

5403:                                             ; preds = %5392, %5402
  br i1 %4901, label %5404, label %5505

5404:                                             ; preds = %5403
  %5405 = and i1 %4952, %5397
  br i1 %5405, label %5406, label %5426

5406:                                             ; preds = %5404
  br i1 %5382, label %5412, label %5407

5407:                                             ; preds = %5406
  %5408 = mul nsw i64 %5394, %4950
  %5409 = trunc i64 %5408 to i32
  %5410 = shl i32 %5409, 4
  %5411 = getelementptr inbounds float, float* %325, i32 %5410
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %5411, i8 zeroext 0, i16 zeroext %4913, i16 zeroext %4912, i16 zeroext %5361, i16 zeroext %5363, i32 1)
  br label %5447

5412:                                             ; preds = %5406
  br i1 %4911, label %5413, label %5447

5413:                                             ; preds = %5412
  %5414 = mul nsw i64 %5394, %4950
  %5415 = shl nsw i64 %5414, 4
  br label %5416

5416:                                             ; preds = %5413, %5416
  %5417 = phi i64 [ 0, %5413 ], [ %5424, %5416 ]
  %5418 = mul i64 %5347, %5417
  %5419 = trunc i64 %5418 to i32
  %5420 = getelementptr inbounds i16, i16* %336, i32 %5419
  %5421 = add nsw i64 %5418, %5415
  %5422 = trunc i64 %5421 to i32
  %5423 = getelementptr inbounds float, float* %325, i32 %5422
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %5420, float* %5423, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4912, i16 zeroext 0, i16 zeroext 0, i32 1)
  %5424 = add nuw nsw i64 %5417, 1
  %5425 = icmp slt i64 %5424, %4910
  br i1 %5425, label %5416, label %5447

5426:                                             ; preds = %5404
  %5427 = and i1 %4954, %5399
  br i1 %5427, label %5428, label %5447

5428:                                             ; preds = %5426
  %5429 = mul nsw i64 %5394, %4950
  br i1 %5381, label %5435, label %5430

5430:                                             ; preds = %5428
  %5431 = trunc i64 %5429 to i32
  %5432 = shl i32 %5431, 4
  %5433 = getelementptr inbounds float, float* %325, i32 %5432
  %5434 = trunc i64 %5400 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %5433, i8 zeroext 0, i16 zeroext %5434, i16 zeroext %5352, i16 zeroext %5354, i16 zeroext %5357, i32 1)
  br label %5447

5435:                                             ; preds = %5428
  %5436 = shl nsw i64 %5429, 4
  br label %5437

5437:                                             ; preds = %5435, %5437
  %5438 = phi i64 [ 0, %5435 ], [ %5445, %5437 ]
  %5439 = mul i64 %5347, %5438
  %5440 = trunc i64 %5439 to i32
  %5441 = getelementptr inbounds i16, i16* %336, i32 %5440
  %5442 = add nsw i64 %5439, %5436
  %5443 = trunc i64 %5442 to i32
  %5444 = getelementptr inbounds float, float* %325, i32 %5443
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %5441, float* %5444, i8 zeroext 0, i16 zeroext 1, i16 zeroext %5352, i16 zeroext 0, i16 zeroext 0, i32 1)
  %5445 = add nuw nsw i64 %5438, 1
  %5446 = icmp ult i64 %5445, %5400
  br i1 %5446, label %5437, label %5447

5447:                                             ; preds = %5437, %5416, %5412, %5407, %5430, %5426
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %5367, label %5506, label %5448

5448:                                             ; preds = %5447
  %5449 = and i1 %4967, %5397
  br i1 %5449, label %5450, label %5478

5450:                                             ; preds = %5448
  br i1 %5388, label %5459, label %5451

5451:                                             ; preds = %5450
  %5452 = add i64 %5394, %4936
  %5453 = add i64 %5452, %4916
  %5454 = mul i64 %4917, %5453
  %5455 = add nsw i64 %5454, %5371
  %5456 = trunc i64 %5455 to i32
  %5457 = getelementptr inbounds i16, i16* %2, i32 %5456
  %5458 = bitcast i16* %5457 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %5458, i8* %4918, i8 zeroext 0, i16 zeroext %4913, i16 zeroext %4921, i16 zeroext %5380, i16 zeroext %4922)
  br label %5506

5459:                                             ; preds = %5450
  br i1 %4911, label %5460, label %5506

5460:                                             ; preds = %5459
  %5461 = add i64 %5394, %4936
  %5462 = add i64 %5461, %4916
  br label %5463

5463:                                             ; preds = %5460, %5463
  %5464 = phi i64 [ 0, %5460 ], [ %5476, %5463 ]
  %5465 = add i64 %5462, %5464
  %5466 = mul i64 %4917, %5465
  %5467 = add i64 %5466, %5371
  %5468 = trunc i64 %5467 to i32
  %5469 = getelementptr inbounds i16, i16* %2, i32 %5468
  %5470 = bitcast i16* %5469 to i8*
  %5471 = mul nsw i64 %5464, %4950
  %5472 = trunc i64 %5471 to i32
  %5473 = shl i32 %5472, 4
  %5474 = getelementptr inbounds i16, i16* %336, i32 %5473
  %5475 = bitcast i16* %5474 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %5470, i8* %5475, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4921, i16 zeroext 0, i16 zeroext 0)
  %5476 = add nuw nsw i64 %5464, 1
  %5477 = icmp slt i64 %5476, %4910
  br i1 %5477, label %5463, label %5506

5478:                                             ; preds = %5448
  %5479 = and i1 %4969, %5399
  br i1 %5479, label %5480, label %5506

5480:                                             ; preds = %5478
  %5481 = add i64 %5394, %4936
  %5482 = add i64 %5481, %4916
  br i1 %5386, label %5490, label %5483

5483:                                             ; preds = %5480
  %5484 = mul i64 %4917, %5482
  %5485 = add nsw i64 %5484, %5371
  %5486 = trunc i64 %5485 to i32
  %5487 = getelementptr inbounds i16, i16* %2, i32 %5486
  %5488 = bitcast i16* %5487 to i8*
  %5489 = trunc i64 %5400 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %5488, i8* %4918, i8 zeroext 0, i16 zeroext %5489, i16 zeroext %5372, i16 zeroext %5373, i16 zeroext %5374)
  br label %5506

5490:                                             ; preds = %5480, %5490
  %5491 = phi i64 [ %5503, %5490 ], [ 0, %5480 ]
  %5492 = add i64 %5482, %5491
  %5493 = mul i64 %4917, %5492
  %5494 = add i64 %5493, %5371
  %5495 = trunc i64 %5494 to i32
  %5496 = getelementptr inbounds i16, i16* %2, i32 %5495
  %5497 = bitcast i16* %5496 to i8*
  %5498 = mul nsw i64 %5491, %4950
  %5499 = trunc i64 %5498 to i32
  %5500 = shl i32 %5499, 4
  %5501 = getelementptr inbounds i16, i16* %336, i32 %5500
  %5502 = bitcast i16* %5501 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %5497, i8* %5502, i8 zeroext 0, i16 zeroext 1, i16 zeroext %5372, i16 zeroext 0, i16 zeroext 0)
  %5503 = add nuw nsw i64 %5491, 1
  %5504 = icmp ult i64 %5503, %5400
  br i1 %5504, label %5490, label %5506

5505:                                             ; preds = %5403
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %5506

5506:                                             ; preds = %5490, %5463, %5459, %5447, %5505, %5451, %5483, %5478
  %5507 = icmp slt i64 %5393, %258
  %5508 = and i1 %4923, %5507
  br i1 %5508, label %5509, label %5510

5509:                                             ; preds = %5506
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %5510

5510:                                             ; preds = %5509, %5506
  %5511 = add nuw nsw i64 %5393, 1
  %5512 = icmp slt i64 %5511, %257
  br i1 %5512, label %5392, label %5389

5513:                                             ; preds = %5389
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 0)
  br label %5514

5514:                                             ; preds = %5513, %5389
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br i1 %4971, label %5516, label %5515

5515:                                             ; preds = %5514
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %5516

5516:                                             ; preds = %5514, %5515
  %5517 = or i64 %4931, 1
  %5518 = icmp slt i64 %5517, %236
  br i1 %5518, label %5519, label %6093

5519:                                             ; preds = %5516
  %5520 = sdiv i64 %5517, %198
  %5521 = mul nsw i64 %5520, %198
  %5522 = sub nsw i64 %5517, %5521
  %5523 = add nsw i64 %5520, %351
  %5524 = mul nsw i64 %5523, %160
  %5525 = sub nsw i64 %87, %5524
  %5526 = icmp sgt i64 %5525, %160
  %5527 = select i1 %5526, i64 %160, i64 %5525
  %5528 = icmp sgt i64 %5527, 0
  %5529 = select i1 %5528, i64 %5527, i64 0
  %5530 = add nsw i64 %5522, %4868
  %5531 = add nsw i64 %5530, 1
  %5532 = mul nsw i64 %5531, %177
  %5533 = icmp slt i64 %5532, %240
  %5534 = select i1 %5533, i64 %5532, i64 %240
  %5535 = shl nsw i64 %5534, 4
  %5536 = mul nsw i64 %5530, %177
  %5537 = shl nsw i64 %5536, 4
  %5538 = sub nsw i64 %5535, %5537
  %5539 = sub nsw i64 %240, %5536
  %5540 = icmp sgt i64 %5539, %177
  %5541 = select i1 %5540, i64 %177, i64 %5539
  %5542 = icmp sgt i64 %5541, 0
  %5543 = select i1 %5542, i64 %5541, i64 0
  %5544 = sub nsw i64 %5537, %4883
  %5545 = freeze i64 %5544
  %5546 = freeze i64 %172
  %5547 = sdiv i64 %5545, %5546
  %5548 = mul i64 %5547, %5546
  %5549 = sub i64 %5545, %5548
  %5550 = sub nsw i64 %120, %5537
  %5551 = icmp slt i64 %178, %5550
  %5552 = select i1 %5551, i64 %178, i64 %5550
  %5553 = icmp sgt i64 %5552, 0
  %5554 = select i1 %5553, i64 %5552, i64 0
  br i1 %4892, label %5555, label %5590

5555:                                             ; preds = %5519
  %5556 = mul nsw i64 %5549, %150
  %5557 = sub nsw i64 %5556, %244
  %5558 = mul nsw i64 %5547, %301
  %5559 = sub nsw i64 %5558, %4891
  %5560 = icmp slt i64 %5529, 2
  %5561 = icmp slt i64 %5527, 2
  %5562 = and i1 %5561, %5560
  %5563 = mul i64 %5520, %160
  %5564 = trunc i64 %5529 to i8
  %5565 = icmp sgt i64 %5527, 1
  %5566 = or i1 %4894, %5565
  %5567 = shl i64 %5527, 8
  %5568 = trunc i64 %5557 to i16
  %5569 = trunc i64 %5559 to i16
  %5570 = trunc i64 %5547 to i32
  %5571 = trunc i64 %5549 to i32
  %5572 = add nsw i64 %5543, -1
  %5573 = icmp sgt i64 %5543, 1
  %5574 = trunc i64 %5543 to i8
  %5575 = and i1 %5528, %5542
  %5576 = trunc i64 %5543 to i16
  %5577 = shl i16 %5576, 4
  %5578 = trunc i64 %5529 to i16
  %5579 = shl i16 %5578, 4
  %5580 = icmp sgt i64 %5543, 4
  %5581 = icmp sgt i64 %5529, 1
  %5582 = icmp sgt i64 %5543, 2
  %5583 = icmp sgt i64 %5529, 2
  %5584 = and i1 %5581, %5580
  %5585 = and i1 %5583, %5582
  %5586 = or i1 %5584, %5585
  %5587 = and i1 %5581, %5580
  %5588 = and i1 %5583, %5582
  %5589 = or i1 %5587, %5588
  br label %5635

5590:                                             ; preds = %5969, %5519
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 1, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 1, i32 0)
  br i1 %4909, label %5591, label %6093

5591:                                             ; preds = %5590
  %5592 = icmp sgt i64 %5538, 1048559
  %5593 = shl i64 %5538, 4
  %5594 = and i64 %5543, 72057594037927935
  %5595 = shl nuw nsw i64 %5594, 8
  %5596 = sub nsw i64 %5593, %5595
  %5597 = icmp slt i64 %5596, -15
  %5598 = trunc i64 %5543 to i16
  %5599 = sdiv i64 %5596, 256
  %5600 = trunc i64 %5599 to i16
  %5601 = shl nuw nsw i64 %5594, 4
  %5602 = sub nsw i64 %5538, %5601
  %5603 = trunc i64 %5602 to i16
  %5604 = sub nsw i64 %5593, %254
  %5605 = icmp slt i64 %5604, -15
  %5606 = sdiv i64 %5604, 256
  %5607 = trunc i64 %5606 to i16
  %5608 = sub nsw i64 %5538, %255
  %5609 = trunc i64 %5608 to i16
  %5610 = icmp sgt i64 %5523, %188
  %5611 = icmp sgt i64 %5530, %193
  %5612 = or i1 %5610, %5611
  %5613 = or i1 %4914, %5612
  %5614 = icmp sgt i64 %5538, 65534
  %5615 = sub nsw i64 %120, %5554
  %5616 = sub nsw i64 %5538, %5554
  %5617 = shl nsw i64 %5536, 8
  %5618 = trunc i64 %5554 to i16
  %5619 = trunc i64 %5616 to i16
  %5620 = trunc i64 %5615 to i16
  %5621 = icmp slt i64 %5538, 65535
  %5622 = and i1 %4919, %5621
  %5623 = and i1 %4920, %5622
  %5624 = sub nsw i64 %5538, %178
  %5625 = icmp slt i64 %5624, 0
  %5626 = trunc i64 %5624 to i16
  %5627 = or i1 %5592, %5597
  %5628 = or i1 %5592, %5605
  %5629 = or i1 %4915, %5614
  %5630 = or i64 %5615, %5616
  %5631 = icmp slt i64 %5630, 0
  %5632 = or i1 %5631, %5629
  %5633 = xor i1 %5623, true
  %5634 = or i1 %5625, %5633
  br label %5972

5635:                                             ; preds = %5555, %5969
  %5636 = phi i64 [ 0, %5555 ], [ %5970, %5969 ]
  %5637 = shl nuw nsw i64 %5636, 1
  %5638 = sdiv i64 %5637, %126
  %5639 = mul nsw i64 %5638, %126
  %5640 = mul nsw i64 %5637, %122
  %5641 = sub nsw i64 %94, %5640
  %5642 = icmp sgt i64 %5641, %122
  %5643 = select i1 %5642, i64 %122, i64 %5641
  %5644 = icmp sgt i64 %5643, 0
  %5645 = select i1 %5644, i64 %5643, i64 0
  %5646 = freeze i64 %5640
  %5647 = freeze i64 %166
  %5648 = sdiv i64 %5646, %5647
  %5649 = mul i64 %5648, %5647
  %5650 = sub i64 %5646, %5649
  %5651 = sdiv i64 %5650, %93
  %5652 = srem i64 %5640, %93
  %5653 = icmp eq i64 %5636, 0
  br i1 %5653, label %5655, label %5654

5654:                                             ; preds = %5635
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %5655

5655:                                             ; preds = %5635, %5654
  %5656 = and i1 %5526, %5642
  br i1 %5656, label %5657, label %5680

5657:                                             ; preds = %5655
  br i1 %5566, label %5664, label %5658

5658:                                             ; preds = %5657
  %5659 = mul nsw i64 %5640, %358
  %5660 = add i64 %5563, %5659
  %5661 = trunc i64 %5660 to i32
  %5662 = shl i32 %5661, 8
  %5663 = getelementptr inbounds i16, i16* %284, i32 %5662
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %5663, i16 zeroext 0, i8 zeroext %4895, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5704

5664:                                             ; preds = %5657
  br i1 %4927, label %5704, label %5665

5665:                                             ; preds = %5664, %5665
  %5666 = phi i64 [ %5678, %5665 ], [ 0, %5664 ]
  %5667 = mul i64 %5567, %5666
  %5668 = add nsw i64 %5667, %248
  %5669 = trunc i64 %5668 to i32
  %5670 = getelementptr inbounds i16, i16* %328, i32 %5669
  %5671 = add i64 %5666, %5640
  %5672 = mul i64 %5671, %358
  %5673 = add i64 %5672, %5524
  %5674 = shl i64 %5673, 8
  %5675 = add i64 %4899, %5674
  %5676 = trunc i64 %5675 to i32
  %5677 = getelementptr inbounds i16, i16* %284, i32 %5676
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5670, i16* %5677, i16 zeroext 0, i8 zeroext %4900, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5678 = add nuw nsw i64 %5666, 1
  %5679 = icmp slt i64 %5678, %122
  br i1 %5679, label %5665, label %5704

5680:                                             ; preds = %5655
  %5681 = and i1 %5528, %5644
  br i1 %5681, label %5682, label %5704

5682:                                             ; preds = %5680
  br i1 %5562, label %5683, label %5690

5683:                                             ; preds = %5682
  %5684 = mul nsw i64 %5640, %358
  %5685 = add i64 %5563, %5684
  %5686 = trunc i64 %5685 to i32
  %5687 = shl i32 %5686, 8
  %5688 = getelementptr inbounds i16, i16* %284, i32 %5687
  %5689 = trunc i64 %5645 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %328, i16* %5688, i16 zeroext 0, i8 zeroext %5689, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5704

5690:                                             ; preds = %5682, %5690
  %5691 = phi i64 [ %5702, %5690 ], [ 0, %5682 ]
  %5692 = mul nsw i64 %5691, %5527
  %5693 = trunc i64 %5692 to i32
  %5694 = shl i32 %5693, 8
  %5695 = getelementptr inbounds i16, i16* %328, i32 %5694
  %5696 = add i64 %5691, %5640
  %5697 = mul i64 %5696, %358
  %5698 = add i64 %5563, %5697
  %5699 = trunc i64 %5698 to i32
  %5700 = shl i32 %5699, 8
  %5701 = getelementptr inbounds i16, i16* %284, i32 %5700
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5695, i16* %5701, i16 zeroext 0, i8 zeroext %5564, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5702 = add nuw nsw i64 %5691, 1
  %5703 = icmp ult i64 %5702, %5645
  br i1 %5703, label %5690, label %5704

5704:                                             ; preds = %5690, %5665, %5664, %5680, %5683, %5658
  %5705 = and i1 %5542, %5644
  %5706 = and i1 %4901, %5705
  br i1 %5706, label %5707, label %5778

5707:                                             ; preds = %5704
  %5708 = trunc i64 %5652 to i8
  %5709 = trunc i64 %5651 to i8
  %5710 = trunc i64 %5648 to i16
  %5711 = icmp slt i64 %5645, %5543
  %5712 = trunc i64 %5645 to i8
  %5713 = select i1 %5711, i8 %5712, i8 1
  %5714 = zext i1 %5711 to i8
  %5715 = select i1 %5711, i64 %5543, i64 %5645
  %5716 = trunc i64 %5715 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %331, i16* %312, i8 zeroext %5708, i8 zeroext %5709, i16 signext %5568, i16 signext %5569, i16 zeroext %5710, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5713, i8 zeroext %5714, i8 zeroext %5716, i32 0)
  %5717 = add nuw nsw i64 %5645, %5543
  %5718 = icmp eq i64 %5717, 2
  br i1 %5718, label %5778, label %5719

5719:                                             ; preds = %5707
  br i1 %5711, label %5748, label %5720

5720:                                             ; preds = %5719
  br i1 %5573, label %5721, label %5778

5721:                                             ; preds = %5720, %5721
  %5722 = phi i64 [ %5734, %5721 ], [ 0, %5720 ]
  %5723 = phi i32 [ %5731, %5721 ], [ %5570, %5720 ]
  %5724 = phi i32 [ %5733, %5721 ], [ %5571, %5720 ]
  %5725 = add i32 %5724, %4906
  %5726 = icmp slt i32 %170, %5725
  %5727 = zext i32 %5723 to i64
  %5728 = add nsw i64 %174, %5727
  %5729 = zext i1 %5726 to i64
  %5730 = add i64 %5728, %5729
  %5731 = trunc i64 %5730 to i32
  %5732 = select i1 %5726, i32 %4907, i32 0
  %5733 = sub i32 %5725, %5732
  %5734 = add nuw nsw i64 %5722, 1
  %5735 = mul nuw nsw i64 %5734, %5645
  %5736 = trunc i64 %5735 to i32
  %5737 = shl i32 %5736, 8
  %5738 = getelementptr inbounds i16, i16* %331, i32 %5737
  %5739 = mul nsw i32 %5733, %39
  %5740 = zext i32 %5739 to i64
  %5741 = sub i64 %5740, %244
  %5742 = trunc i64 %5741 to i16
  %5743 = mul nsw i32 %36, %5731
  %5744 = zext i32 %5743 to i64
  %5745 = sub i64 %5744, %4891
  %5746 = trunc i64 %5745 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5738, i16* %312, i8 zeroext %5708, i8 zeroext %5709, i16 signext %5742, i16 signext %5746, i16 zeroext %5710, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %5712, i32 0)
  %5747 = icmp slt i64 %5734, %5572
  br i1 %5747, label %5721, label %5778

5748:                                             ; preds = %5719
  %5749 = add nsw i64 %5645, -1
  %5750 = icmp sgt i64 %5645, 1
  br i1 %5750, label %5751, label %5778

5751:                                             ; preds = %5748
  %5752 = trunc i64 %5648 to i32
  %5753 = trunc i64 %5652 to i32
  %5754 = trunc i64 %5651 to i32
  br label %5755

5755:                                             ; preds = %5751, %5755
  %5756 = phi i64 [ %5776, %5755 ], [ 0, %5751 ]
  %5757 = phi i32 [ %5768, %5755 ], [ %5754, %5751 ]
  %5758 = phi i32 [ %5764, %5755 ], [ %5753, %5751 ]
  %5759 = phi i32 [ %5767, %5755 ], [ %5752, %5751 ]
  %5760 = add nsw i32 %5758, 1
  %5761 = icmp eq i32 %5760, %27
  %5762 = zext i1 %5761 to i32
  %5763 = add nsw i32 %5757, %5762
  %5764 = select i1 %5761, i32 0, i32 %5760
  %5765 = icmp eq i32 %5763, %24
  %5766 = zext i1 %5765 to i32
  %5767 = add nsw i32 %5759, %5766
  %5768 = select i1 %5765, i32 0, i32 %5763
  %5769 = trunc i64 %5756 to i32
  %5770 = shl i32 %5769, 8
  %5771 = add i32 %5770, 256
  %5772 = getelementptr inbounds i16, i16* %331, i32 %5771
  %5773 = trunc i32 %5764 to i8
  %5774 = trunc i32 %5768 to i8
  %5775 = trunc i32 %5767 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5772, i16* %312, i8 zeroext %5773, i8 zeroext %5774, i16 signext %5568, i16 signext %5569, i16 zeroext %5775, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5712, i8 zeroext 1, i8 zeroext %5574, i32 0)
  %5776 = add nuw nsw i64 %5756, 1
  %5777 = icmp slt i64 %5776, %5749
  br i1 %5777, label %5755, label %5778

5778:                                             ; preds = %5721, %5755, %5720, %5748, %5707, %5704
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %5779 = icmp sle i64 %5637, %123
  %5780 = and i1 %4901, %5779
  %5781 = and i1 %5575, %5644
  %5782 = and i1 %5780, %5781
  br i1 %5782, label %5783, label %5799

5783:                                             ; preds = %5778
  %5784 = icmp sgt i64 %94, %5640
  %5785 = shl nsw i64 %5640, 4
  %5786 = sub nsw i64 %249, %5785
  %5787 = sub nsw i64 %5785, %249
  %5788 = select i1 %5784, i64 %5786, i64 %5787
  %5789 = icmp sgt i64 %5788, 0
  br i1 %5789, label %5790, label %5799

5790:                                             ; preds = %5783
  %5791 = shl nsw i64 %5645, 4
  %5792 = icmp slt i64 %5791, %5788
  %5793 = select i1 %5792, i64 %5791, i64 %5788
  %5794 = trunc i64 %5793 to i16
  %5795 = icmp eq i64 %5638, 0
  %5796 = icmp eq i64 %5637, %5639
  %5797 = and i1 %5795, %5796
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %331, i16* %328, i16 zeroext %5577, i16 zeroext %5794, i16 zeroext %5579, i1 zeroext %5797)
  br i1 %5586, label %5799, label %5798

5798:                                             ; preds = %5790
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %5799

5799:                                             ; preds = %5790, %5778, %5798, %5783
  %5800 = icmp slt i64 %5636, %250
  %5801 = and i1 %4908, %5800
  br i1 %5801, label %5802, label %5803

5802:                                             ; preds = %5799
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  br label %5803

5803:                                             ; preds = %5802, %5799
  br i1 %5653, label %5805, label %5804

5804:                                             ; preds = %5803
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %5805

5805:                                             ; preds = %5803, %5804
  %5806 = or i64 %5637, 1
  %5807 = icmp slt i64 %5806, %245
  br i1 %5807, label %5808, label %5967

5808:                                             ; preds = %5805
  %5809 = sdiv i64 %5806, %126
  %5810 = mul nsw i64 %5809, %126
  %5811 = mul nsw i64 %5806, %122
  %5812 = sub nsw i64 %94, %5811
  %5813 = icmp sgt i64 %5812, %122
  %5814 = select i1 %5813, i64 %122, i64 %5812
  %5815 = icmp sgt i64 %5814, 0
  %5816 = select i1 %5815, i64 %5814, i64 0
  %5817 = freeze i64 %5811
  %5818 = freeze i64 %166
  %5819 = sdiv i64 %5817, %5818
  %5820 = mul i64 %5819, %5818
  %5821 = sub i64 %5817, %5820
  %5822 = sdiv i64 %5821, %93
  %5823 = srem i64 %5811, %93
  %5824 = and i1 %5526, %5813
  br i1 %5824, label %5825, label %5848

5825:                                             ; preds = %5808
  br i1 %5566, label %5832, label %5826

5826:                                             ; preds = %5825
  %5827 = mul nsw i64 %5811, %358
  %5828 = add i64 %5563, %5827
  %5829 = trunc i64 %5828 to i32
  %5830 = shl i32 %5829, 8
  %5831 = getelementptr inbounds i16, i16* %284, i32 %5830
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %5831, i16 zeroext 0, i8 zeroext %4895, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5872

5832:                                             ; preds = %5825
  br i1 %4928, label %5872, label %5833

5833:                                             ; preds = %5832, %5833
  %5834 = phi i64 [ %5846, %5833 ], [ 0, %5832 ]
  %5835 = mul i64 %5567, %5834
  %5836 = add nsw i64 %5835, %248
  %5837 = trunc i64 %5836 to i32
  %5838 = getelementptr inbounds i16, i16* %332, i32 %5837
  %5839 = add i64 %5834, %5811
  %5840 = mul i64 %5839, %358
  %5841 = add i64 %5840, %5524
  %5842 = shl i64 %5841, 8
  %5843 = add i64 %4899, %5842
  %5844 = trunc i64 %5843 to i32
  %5845 = getelementptr inbounds i16, i16* %284, i32 %5844
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5838, i16* %5845, i16 zeroext 0, i8 zeroext %4900, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5846 = add nuw nsw i64 %5834, 1
  %5847 = icmp slt i64 %5846, %122
  br i1 %5847, label %5833, label %5872

5848:                                             ; preds = %5808
  %5849 = and i1 %5528, %5815
  br i1 %5849, label %5850, label %5872

5850:                                             ; preds = %5848
  br i1 %5562, label %5851, label %5858

5851:                                             ; preds = %5850
  %5852 = mul nsw i64 %5811, %358
  %5853 = add i64 %5563, %5852
  %5854 = trunc i64 %5853 to i32
  %5855 = shl i32 %5854, 8
  %5856 = getelementptr inbounds i16, i16* %284, i32 %5855
  %5857 = trunc i64 %5816 to i8
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %332, i16* %5856, i16 zeroext 0, i8 zeroext %5857, i16 zeroext %4893, i8 zeroext 0, i1 zeroext false, i32 0)
  br label %5872

5858:                                             ; preds = %5850, %5858
  %5859 = phi i64 [ %5870, %5858 ], [ 0, %5850 ]
  %5860 = mul nsw i64 %5859, %5527
  %5861 = trunc i64 %5860 to i32
  %5862 = shl i32 %5861, 8
  %5863 = getelementptr inbounds i16, i16* %332, i32 %5862
  %5864 = add i64 %5859, %5811
  %5865 = mul i64 %5864, %358
  %5866 = add i64 %5563, %5865
  %5867 = trunc i64 %5866 to i32
  %5868 = shl i32 %5867, 8
  %5869 = getelementptr inbounds i16, i16* %284, i32 %5868
  tail call void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16* %5863, i16* %5869, i16 zeroext 0, i8 zeroext %5564, i16 zeroext 1, i8 zeroext 0, i1 zeroext false, i32 0)
  %5870 = add nuw nsw i64 %5859, 1
  %5871 = icmp ult i64 %5870, %5816
  br i1 %5871, label %5858, label %5872

5872:                                             ; preds = %5858, %5833, %5832, %5848, %5851, %5826
  %5873 = and i1 %5542, %5815
  %5874 = and i1 %4901, %5873
  br i1 %5874, label %5875, label %5946

5875:                                             ; preds = %5872
  %5876 = trunc i64 %5823 to i8
  %5877 = trunc i64 %5822 to i8
  %5878 = trunc i64 %5819 to i16
  %5879 = icmp slt i64 %5816, %5543
  %5880 = trunc i64 %5816 to i8
  %5881 = select i1 %5879, i8 %5880, i8 1
  %5882 = zext i1 %5879 to i8
  %5883 = select i1 %5879, i64 %5543, i64 %5816
  %5884 = trunc i64 %5883 to i8
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %333, i16* %312, i8 zeroext %5876, i8 zeroext %5877, i16 signext %5568, i16 signext %5569, i16 zeroext %5878, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5881, i8 zeroext %5882, i8 zeroext %5884, i32 0)
  %5885 = add nuw nsw i64 %5816, %5543
  %5886 = icmp eq i64 %5885, 2
  br i1 %5886, label %5946, label %5887

5887:                                             ; preds = %5875
  br i1 %5879, label %5916, label %5888

5888:                                             ; preds = %5887
  br i1 %5573, label %5889, label %5946

5889:                                             ; preds = %5888, %5889
  %5890 = phi i64 [ %5902, %5889 ], [ 0, %5888 ]
  %5891 = phi i32 [ %5899, %5889 ], [ %5570, %5888 ]
  %5892 = phi i32 [ %5901, %5889 ], [ %5571, %5888 ]
  %5893 = add i32 %5892, %4906
  %5894 = icmp slt i32 %170, %5893
  %5895 = zext i32 %5891 to i64
  %5896 = add nsw i64 %174, %5895
  %5897 = zext i1 %5894 to i64
  %5898 = add i64 %5896, %5897
  %5899 = trunc i64 %5898 to i32
  %5900 = select i1 %5894, i32 %4907, i32 0
  %5901 = sub i32 %5893, %5900
  %5902 = add nuw nsw i64 %5890, 1
  %5903 = mul nuw nsw i64 %5902, %5816
  %5904 = trunc i64 %5903 to i32
  %5905 = shl i32 %5904, 8
  %5906 = getelementptr inbounds i16, i16* %333, i32 %5905
  %5907 = mul nsw i32 %5901, %39
  %5908 = zext i32 %5907 to i64
  %5909 = sub i64 %5908, %244
  %5910 = trunc i64 %5909 to i16
  %5911 = mul nsw i32 %36, %5899
  %5912 = zext i32 %5911 to i64
  %5913 = sub i64 %5912, %4891
  %5914 = trunc i64 %5913 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5906, i16* %312, i8 zeroext %5876, i8 zeroext %5877, i16 signext %5910, i16 signext %5914, i16 zeroext %5878, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0, i8 zeroext %5880, i32 0)
  %5915 = icmp slt i64 %5902, %5572
  br i1 %5915, label %5889, label %5946

5916:                                             ; preds = %5887
  %5917 = add nsw i64 %5816, -1
  %5918 = icmp sgt i64 %5816, 1
  br i1 %5918, label %5919, label %5946

5919:                                             ; preds = %5916
  %5920 = trunc i64 %5819 to i32
  %5921 = trunc i64 %5823 to i32
  %5922 = trunc i64 %5822 to i32
  br label %5923

5923:                                             ; preds = %5919, %5923
  %5924 = phi i64 [ %5944, %5923 ], [ 0, %5919 ]
  %5925 = phi i32 [ %5936, %5923 ], [ %5922, %5919 ]
  %5926 = phi i32 [ %5932, %5923 ], [ %5921, %5919 ]
  %5927 = phi i32 [ %5935, %5923 ], [ %5920, %5919 ]
  %5928 = add nsw i32 %5926, 1
  %5929 = icmp eq i32 %5928, %27
  %5930 = zext i1 %5929 to i32
  %5931 = add nsw i32 %5925, %5930
  %5932 = select i1 %5929, i32 0, i32 %5928
  %5933 = icmp eq i32 %5931, %24
  %5934 = zext i1 %5933 to i32
  %5935 = add nsw i32 %5927, %5934
  %5936 = select i1 %5933, i32 0, i32 %5931
  %5937 = trunc i64 %5924 to i32
  %5938 = shl i32 %5937, 8
  %5939 = add i32 %5938, 256
  %5940 = getelementptr inbounds i16, i16* %333, i32 %5939
  %5941 = trunc i32 %5932 to i8
  %5942 = trunc i32 %5936 to i8
  %5943 = trunc i32 %5935 to i16
  tail call void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16* %5940, i16* %312, i8 zeroext %5941, i8 zeroext %5942, i16 signext %5568, i16 signext %5569, i16 zeroext %5943, i8 zeroext %4902, i8 zeroext %4903, i8 zeroext %4904, i8 zeroext %4905, i8 zeroext 1, i8 zeroext 1, i8 zeroext %5880, i8 zeroext 1, i8 zeroext %5574, i32 0)
  %5944 = add nuw nsw i64 %5924, 1
  %5945 = icmp slt i64 %5944, %5917
  br i1 %5945, label %5923, label %5946

5946:                                             ; preds = %5889, %5923, %5888, %5916, %5875, %5872
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 3, i32 2, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 3, i32 2, i32 0)
  %5947 = icmp sle i64 %5806, %123
  %5948 = and i1 %4901, %5947
  %5949 = and i1 %5575, %5815
  %5950 = and i1 %5948, %5949
  br i1 %5950, label %5951, label %5967

5951:                                             ; preds = %5946
  %5952 = icmp sgt i64 %94, %5811
  %5953 = shl nsw i64 %5811, 4
  %5954 = sub nsw i64 %249, %5953
  %5955 = sub nsw i64 %5953, %249
  %5956 = select i1 %5952, i64 %5954, i64 %5955
  %5957 = icmp sgt i64 %5956, 0
  br i1 %5957, label %5958, label %5967

5958:                                             ; preds = %5951
  %5959 = shl nsw i64 %5816, 4
  %5960 = icmp slt i64 %5959, %5956
  %5961 = select i1 %5960, i64 %5959, i64 %5956
  %5962 = trunc i64 %5961 to i16
  %5963 = icmp eq i64 %5809, 0
  %5964 = icmp eq i64 %5806, %5810
  %5965 = and i1 %5963, %5964
  tail call void @_Z12intrinsic_12PfPsS0_tttb(float* %337, i16* %333, i16* %332, i16 zeroext %5577, i16 zeroext %5962, i16 zeroext %5579, i1 zeroext %5965)
  br i1 %5589, label %5967, label %5966

5966:                                             ; preds = %5958
  tail call void @_Z11intrinsic_76pipe_t(i32 2)
  br label %5967

5967:                                             ; preds = %5958, %5946, %5951, %5966, %5805
  br i1 %5801, label %5968, label %5969

5968:                                             ; preds = %5967
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 1)
  br label %5969

5969:                                             ; preds = %5968, %5967
  %5970 = add nuw nsw i64 %5636, 1
  %5971 = icmp slt i64 %5970, %247
  br i1 %5971, label %5635, label %5590

5972:                                             ; preds = %5591, %6090
  %5973 = phi i64 [ 0, %5591 ], [ %6091, %6090 ]
  %5974 = mul nsw i64 %5973, %4910
  %5975 = sub nsw i64 %87, %5974
  %5976 = sub i64 %5975, %5524
  %5977 = icmp sgt i64 %5976, %4910
  %5978 = select i1 %5977, i64 %4910, i64 %5976
  %5979 = icmp sgt i64 %5978, 0
  %5980 = select i1 %5979, i64 %5978, i64 0
  %5981 = icmp eq i64 %5973, 0
  br i1 %5981, label %5983, label %5982

5982:                                             ; preds = %5972
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %5983

5983:                                             ; preds = %5972, %5982
  br i1 %4901, label %5984, label %6085

5984:                                             ; preds = %5983
  %5985 = and i1 %5540, %5977
  br i1 %5985, label %5986, label %6006

5986:                                             ; preds = %5984
  br i1 %5628, label %5992, label %5987

5987:                                             ; preds = %5986
  %5988 = mul nsw i64 %5974, %5538
  %5989 = trunc i64 %5988 to i32
  %5990 = shl i32 %5989, 4
  %5991 = getelementptr inbounds float, float* %337, i32 %5990
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %5991, i8 zeroext 0, i16 zeroext %4913, i16 zeroext %4912, i16 zeroext %5607, i16 zeroext %5609, i32 1)
  br label %6027

5992:                                             ; preds = %5986
  br i1 %4911, label %5993, label %6027

5993:                                             ; preds = %5992
  %5994 = mul nsw i64 %5974, %5538
  %5995 = shl nsw i64 %5994, 4
  br label %5996

5996:                                             ; preds = %5993, %5996
  %5997 = phi i64 [ 0, %5993 ], [ %6004, %5996 ]
  %5998 = mul i64 %5593, %5997
  %5999 = trunc i64 %5998 to i32
  %6000 = getelementptr inbounds i16, i16* %336, i32 %5999
  %6001 = add nsw i64 %5998, %5995
  %6002 = trunc i64 %6001 to i32
  %6003 = getelementptr inbounds float, float* %337, i32 %6002
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %6000, float* %6003, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4912, i16 zeroext 0, i16 zeroext 0, i32 1)
  %6004 = add nuw nsw i64 %5997, 1
  %6005 = icmp slt i64 %6004, %4910
  br i1 %6005, label %5996, label %6027

6006:                                             ; preds = %5984
  %6007 = and i1 %5542, %5979
  br i1 %6007, label %6008, label %6027

6008:                                             ; preds = %6006
  %6009 = mul nsw i64 %5974, %5538
  br i1 %5627, label %6015, label %6010

6010:                                             ; preds = %6008
  %6011 = trunc i64 %6009 to i32
  %6012 = shl i32 %6011, 4
  %6013 = getelementptr inbounds float, float* %337, i32 %6012
  %6014 = trunc i64 %5980 to i16
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %336, float* %6013, i8 zeroext 0, i16 zeroext %6014, i16 zeroext %5598, i16 zeroext %5600, i16 zeroext %5603, i32 1)
  br label %6027

6015:                                             ; preds = %6008
  %6016 = shl nsw i64 %6009, 4
  br label %6017

6017:                                             ; preds = %6015, %6017
  %6018 = phi i64 [ 0, %6015 ], [ %6025, %6017 ]
  %6019 = mul i64 %5593, %6018
  %6020 = trunc i64 %6019 to i32
  %6021 = getelementptr inbounds i16, i16* %336, i32 %6020
  %6022 = add nsw i64 %6019, %6016
  %6023 = trunc i64 %6022 to i32
  %6024 = getelementptr inbounds float, float* %337, i32 %6023
  tail call void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16* %6021, float* %6024, i8 zeroext 0, i16 zeroext 1, i16 zeroext %5598, i16 zeroext 0, i16 zeroext 0, i32 1)
  %6025 = add nuw nsw i64 %6018, 1
  %6026 = icmp ult i64 %6025, %5980
  br i1 %6026, label %6017, label %6027

6027:                                             ; preds = %6017, %5996, %5992, %5987, %6010, %6006
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br i1 %5613, label %6086, label %6028

6028:                                             ; preds = %6027
  %6029 = and i1 %5551, %5977
  br i1 %6029, label %6030, label %6058

6030:                                             ; preds = %6028
  br i1 %5634, label %6039, label %6031

6031:                                             ; preds = %6030
  %6032 = add i64 %5974, %5524
  %6033 = add i64 %6032, %4916
  %6034 = mul i64 %4917, %6033
  %6035 = add nsw i64 %6034, %5617
  %6036 = trunc i64 %6035 to i32
  %6037 = getelementptr inbounds i16, i16* %2, i32 %6036
  %6038 = bitcast i16* %6037 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %6038, i8* %4918, i8 zeroext 0, i16 zeroext %4913, i16 zeroext %4921, i16 zeroext %5626, i16 zeroext %4922)
  br label %6086

6039:                                             ; preds = %6030
  br i1 %4911, label %6040, label %6086

6040:                                             ; preds = %6039
  %6041 = add i64 %5974, %5524
  %6042 = add i64 %6041, %4916
  br label %6043

6043:                                             ; preds = %6040, %6043
  %6044 = phi i64 [ 0, %6040 ], [ %6056, %6043 ]
  %6045 = add i64 %6042, %6044
  %6046 = mul i64 %4917, %6045
  %6047 = add i64 %6046, %5617
  %6048 = trunc i64 %6047 to i32
  %6049 = getelementptr inbounds i16, i16* %2, i32 %6048
  %6050 = bitcast i16* %6049 to i8*
  %6051 = mul nsw i64 %6044, %5538
  %6052 = trunc i64 %6051 to i32
  %6053 = shl i32 %6052, 4
  %6054 = getelementptr inbounds i16, i16* %336, i32 %6053
  %6055 = bitcast i16* %6054 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %6050, i8* %6055, i8 zeroext 0, i16 zeroext 1, i16 zeroext %4921, i16 zeroext 0, i16 zeroext 0)
  %6056 = add nuw nsw i64 %6044, 1
  %6057 = icmp slt i64 %6056, %4910
  br i1 %6057, label %6043, label %6086

6058:                                             ; preds = %6028
  %6059 = and i1 %5553, %5979
  br i1 %6059, label %6060, label %6086

6060:                                             ; preds = %6058
  %6061 = add i64 %5974, %5524
  %6062 = add i64 %6061, %4916
  br i1 %5632, label %6070, label %6063

6063:                                             ; preds = %6060
  %6064 = mul i64 %4917, %6062
  %6065 = add nsw i64 %6064, %5617
  %6066 = trunc i64 %6065 to i32
  %6067 = getelementptr inbounds i16, i16* %2, i32 %6066
  %6068 = bitcast i16* %6067 to i8*
  %6069 = trunc i64 %5980 to i16
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %6068, i8* %4918, i8 zeroext 0, i16 zeroext %6069, i16 zeroext %5618, i16 zeroext %5619, i16 zeroext %5620)
  br label %6086

6070:                                             ; preds = %6060, %6070
  %6071 = phi i64 [ %6083, %6070 ], [ 0, %6060 ]
  %6072 = add i64 %6062, %6071
  %6073 = mul i64 %4917, %6072
  %6074 = add i64 %6073, %5617
  %6075 = trunc i64 %6074 to i32
  %6076 = getelementptr inbounds i16, i16* %2, i32 %6075
  %6077 = bitcast i16* %6076 to i8*
  %6078 = mul nsw i64 %6071, %5538
  %6079 = trunc i64 %6078 to i32
  %6080 = shl i32 %6079, 4
  %6081 = getelementptr inbounds i16, i16* %336, i32 %6080
  %6082 = bitcast i16* %6081 to i8*
  tail call void @_Z12intrinsic_14PvS_htttt(i8* %6077, i8* %6082, i8 zeroext 0, i16 zeroext 1, i16 zeroext %5618, i16 zeroext 0, i16 zeroext 0)
  %6083 = add nuw nsw i64 %6071, 1
  %6084 = icmp ult i64 %6083, %5980
  br i1 %6084, label %6070, label %6086

6085:                                             ; preds = %5983
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 5, i32 0)
  tail call void @_Z12intrinsic_276pipe_tS_9EventType(i32 1, i32 5, i32 0)
  br label %6086

6086:                                             ; preds = %6070, %6043, %6039, %6027, %6085, %6031, %6063, %6058
  %6087 = icmp slt i64 %5973, %258
  %6088 = and i1 %4923, %6087
  br i1 %6088, label %6089, label %6090

6089:                                             ; preds = %6086
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  br label %6090

6090:                                             ; preds = %6089, %6086
  %6091 = add nuw nsw i64 %5973, 1
  %6092 = icmp slt i64 %6091, %257
  br i1 %6092, label %5972, label %6093

6093:                                             ; preds = %6090, %5590, %5516
  br i1 %5391, label %6094, label %6095

6094:                                             ; preds = %6093
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 5, i32 1, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 2, i32 3, i32 0)
  tail call void @_Z12intrinsic_266pipe_tS_9EventType(i32 1, i32 2, i32 1)
  br label %6095

6095:                                             ; preds = %6094, %6093
  %6096 = add nuw nsw i64 %4930, 1
  %6097 = icmp slt i64 %6096, %238
  br i1 %6097, label %4929, label %6098

6098:                                             ; preds = %6095, %4862, %3692
  tail call void @_Z11intrinsic_76pipe_t(i32 6)
  br label %6099

6099:                                             ; preds = %6098, %293
  tail call void @_Z11intrinsic_76pipe_t(i32 6)
  ret void
}

declare dso_local void @_Z11intrinsic_4y(i64) local_unnamed_addr #2

declare dso_local void @_Z11intrinsic_5y(i64) local_unnamed_addr #2

declare dso_local void @_Z11intrinsic_6v() local_unnamed_addr #2

declare dso_local i64 @_Z11intrinsic_2y(i64) local_unnamed_addr #2

declare dso_local void @_Z12intrinsic_15PvS_htttt(i8*, i8*, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #2

declare dso_local void @_Z11intrinsic_76pipe_t(i32) local_unnamed_addr #2

declare dso_local void @_Z11intrinsic_8PvS_htttt5pad_t(i8*, i8*, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i32) local_unnamed_addr #2

declare dso_local void @_Z12intrinsic_266pipe_tS_9EventType(i32, i32, i32) local_unnamed_addr #2

declare dso_local void @_Z12intrinsic_276pipe_tS_9EventType(i32, i32, i32) local_unnamed_addr #2

declare dso_local void @_Z11intrinsic_9PsS_ththb15addr_cal_mode_t(i16*, i16*, i16 zeroext, i8 zeroext, i16 zeroext, i8 zeroext, i1 zeroext, i32) local_unnamed_addr #2

declare dso_local void @_Z12intrinsic_10PsS_hhssthhhhhhhhh7csize_t(i16*, i16*, i8 zeroext, i8 zeroext, i16 signext, i16 signext, i16 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local void @_Z12intrinsic_12PfPsS0_tttb(float*, i16*, i16*, i16 zeroext, i16 zeroext, i16 zeroext, i1 zeroext) local_unnamed_addr #2

declare dso_local void @_Z12intrinsic_13PsPfhtttt10ConvRelu_t(i16*, float*, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i32) local_unnamed_addr #2

declare dso_local void @_Z12intrinsic_14PvS_htttt(i8*, i8*, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #2

declare dso_local void @_Z11intrinsic_3y(i64) local_unnamed_addr #2

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"Raspbian clang version 11.0.1-2+rpi1"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !5, i64 0}
