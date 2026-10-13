
let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        let count = count_Pairs t (n-1)
        n * count_Pairs t (count_Pairs t (n-1))
    |> List.fold_right(fun x count -> count_Pairs t (count_Pairs t (n-1))) []
    |> List.fold_right(fun x count -> count + 1) 0
    |> List.fold_right(fun x count -> count) 0

([1; 2; 3] |> count_Pairs 2) = 3
([1; 2; 3; 4] |> count_Pairs 3) = 4
([1; 2; 3; 4; 5] |> count_Pairs 5) = 10
([1; 2; 3; 4; 5; 6] |> count_Pairs 6) = 15
([1; 2; 3; 4; 5; 6; 7] |> count_Pairs 7) = 21
([1; 2; 3; 4; 5; 6; 7; 8] |> count_Pairs 8) = 28
([1; 2; 3; 4; 5; 6; 7; 8; 9] |> count_Pairs 9) = 36
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10] |> count_Pairs 10) = 45
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11] |> count_Pairs 11) = 55
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12] |> count_Pairs 12) = 66
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13] |> count_Pairs 13) = 75
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14] |> count_Pairs 14) = 84
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15] |> count_Pairs 15) = 93
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16] |> count_Pairs 16) = 102
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17] |> count_Pairs 17) = 112
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18] |> count_Pairs 18) = 121
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19] |> count_Pairs 19) = 130
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20] |> count_Pairs 20) = 139
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21] |> count_Pairs 21) = 148
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22] |> count_Pairs 22) = 157
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23] |> count_Pairs 23) = 167
([1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24] |> count_Pairs 24) = 176
([1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
