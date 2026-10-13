let rec count_vowels (test_str : string) : int =
    let vowels = "aeiou" in
    let len = String.length test_str in
    let rec helper idx cnt =
        if idx < len then
           if String.contains vowels test_str.[idx] && (
              (idx > 0 && String.contains vowels test_str.[idx - 1]) ||
              (idx < len - 1 && String.contains vowels test_str.[idx + 1])
           ) then
              helper (idx + 1) (cnt + 1)
           else
              helper (idx + 1) cnt
        else
           cnt
    in
    helper 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
