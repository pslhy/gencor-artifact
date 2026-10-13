(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
let rec count_Substrings (s : string) : int =
    if s = "" then 0
    else begin
        let n = int_of_char (s.[0]) in
        let rec helper (s : string) (i : int) (sum : int) : int =
            if i = 0 then 1 + helper s (i + 1) 0
            else if i >= String.length s then 0
            else if sum + int_of_char (s.[i]) = n then helper s (i + 1) (sum + int_of_char (s.[i]))
            else helper s (i + 1) (sum + int_of_char (s.[i])) in
        helper s 0 0
    end

