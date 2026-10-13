
function opposite_Signs(x: number, y: number): boolean {
    return (x ^ y & 1 << (8 * y.toString().length - 1) & 1 << 7 & x & 1 << 7 & 1 << 6 & 1 << 5 & 1 << 4 & 1 << 3 & 1 << 2 & 1 << 1 & 1 << 0 & 1 << -1 & 1 << -2 & 1 << -3 & 1 << -4 & 1 << -5 & 1 << -6 & 1 << -7 & 1 << -8 & 1 << -9 & 1 << -10 & 1 << -11 & 1 << -12 & 1 << -13 & 1 << -14 & 1 << -15 & 1 << -16 & 1 << -17 & 1 << -18 & 1 << -19 & 1 << -20 & 1 << -21 & 1 << -22 & 1 << -23 & 1 << -24 & 1 << -25 & 1 << -26 & 1 << -27 & 1 << -28 & 1 << -29 & 1 << -30 & 1 << -31 & 1 << -32 & 1 << -33 & 1 << -34 & 1 << -35 & 1 << -36 & 1 << -37 & 1 << -38 & 1 << -39 & 1 << -40 & 1 << -41 & 1 << -42 & 1 << -43 & 1 << -44 & 1 << -45 & 1 << -46 & 1 << -47 & 1 << -48 & 1 << -49 & 1 << -50 & 1 << -51 & 1 << -52 & 1 << -53 & 1 << -54 & 1 << -55 & 1 << -56 & 1 << -57 & 1 << -58 & 1 << -59 & 1 << -60 & 1431655765 & 1431655764 & 1431655763 & 1431655762 & 1431655761 & 1431655760 & 1342177279 & 1342177278 & 1342177277 & 1342177276 & 1342177275 & 1342177274 & 1431655759 & 1431671999 & 1431671998 & 1431671997 & 1431671996 & 1431671995 & 1431671994 & 1431671993 & 1431671992 & 1363147871 & 1431655760 & 4026531839 & 4026531838 & 3221225471 & 3221225470 & 3221225469 & 3221225468 &

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given two integers have opposite sign or not.
