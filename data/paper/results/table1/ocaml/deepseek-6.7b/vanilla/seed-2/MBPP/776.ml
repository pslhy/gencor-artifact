let rec count_vowels (test_str : string) : int =
  let len = String.length test_str in
  let rec helper (i : int) (count : int) : int =
    if i = len then
      count
    else if test_str.[i] = 'a' && test_str.[i - 1] = 'a' ||
              test_str.[i] = 'e' && test_str.[i - 1] = 'e' ||
              test_str.[i] = 'i' && test_str.[i - 1] = 'i' ||
              test_str.[i] = 'o' && test_str.[i - 1] = 'o' ||
              test_str.[i] = 'u' && test_str.[i - 1] = 'u' ||
              test_str.[i] = 'A' && test_str.[i - 1] = 'A' ||
              test_str.[i] = 'E' && test_str.[i - 1] = 'E' ||
              test_str.[i] = 'I' && test_str.[i - 1] = 'I' ||
              test_str.[i] = 'O' && test_str.[i - 1] = 'O' ||
              test_str.[i] = 'U' && test_str.[i - 1] = 'U' then
      helper (i + 1) (count + 1)
    else
      helper (i + 1) count
  in
  helper 1 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
