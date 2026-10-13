(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
let rec count_Substrings (s : string) : int =
    let n = String.length s in
    let rec loop (i : int) (sum : int) : int =
        if i >= n || (i = 0 && sum = 0) then 1
        else if i >= n then 0
        else if sum = 0 then loop (i + 1) (int_of_char s.[i] - 48)
        else loop (i + 1) (sum + int_of_char s.[i] - 48)
    in loop 0 0

