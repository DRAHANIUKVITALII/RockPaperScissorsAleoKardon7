program rock_paper_scissors.aleo;



function evaluate:
    input r0 as u8.private;
    input r1 as u8.private;
    lt r0 3u8 into r2;
    lt r1 3u8 into r3;
    and r2 r3 into r4;
    assert.eq r4 true;
    is.eq r0 r1 into r5;
    is.eq r0 0u8 into r6;
    is.eq r1 1u8 into r7;
    is.eq r1 2u8 into r8;
    is.eq r0 1u8 into r9;
    is.eq r1 0u8 into r10;
    is.eq r1 2u8 into r11;
    is.eq r0 2u8 into r12;
    is.eq r1 0u8 into r13;
    is.eq r1 1u8 into r14;
    not r13 into r15;
    and r12 r15 into r16;
    and r16 r14 into r17;
    ternary r17 1u8 0u8 into r18;
    and r12 r13 into r19;
    ternary r19 2u8 r18 into r20;
    not r10 into r21;
    and r9 r21 into r22;
    and r22 r11 into r23;
    ternary r23 2u8 r20 into r24;
    and r9 r10 into r25;
    ternary r25 1u8 r24 into r26;
    not r7 into r27;
    and r6 r27 into r28;
    and r28 r8 into r29;
    ternary r29 1u8 r26 into r30;
    and r6 r7 into r31;
    ternary r31 2u8 r30 into r32;
    ternary r5 0u8 r32 into r33;
    output r33 as u8.private;
