
let rec lps (str : string) : int =
    let n = String.length str in
    let rec aux (l, r) =
        if l > r || str.[l] <> str.[r] then
            0
        else if l = r then
            1
        else
            1 + aux(l + 1, r - 1)
    in
    Array.fold_left aux 0 [|0..(n-1)|]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
