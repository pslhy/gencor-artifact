
let rec odd_length_sum (arr : int list) : int = 
    (* base case: empty list with length 0 *)
    let rec loop (i : int) (acc : int) : int = 
        if i >= arr.
            (arr.[i] + loop (i + 2) acc) 
        loop (i + 2) (acc + arr.[i]) 
    loop 0 0
in_channel_length
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 33
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11] = 45
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12] = 57
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13] = 69
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14] = 81
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15] = 93
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16] = 105
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17] = 117
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18] = 129
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19] = 141
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20] = 153
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21] = 165
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22] = 177
odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23] = 189

odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24] = 199

odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24; 25] = 211

odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24; 25; 26] = 223

odd_length_sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24; 25; 26; 27] = 235

odd_length_sum [1; 2; 

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
