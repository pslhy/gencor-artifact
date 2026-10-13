(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
let rec count_vowels (test_str : string) : int =
  let vowel_set = Set.of_list ['a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U'] in
  let len = String.length test_str in
  let is_vowel (c : char) = Set.mem c vowel_set in
  let rec helper i count =
    if i = len then
      count
    else if (i > 0 && is_vowel test_str.[i-1] && is_vowel test_str.[i]) ||
              ((i < len-1) && is_vowel test_str.[i+1] && is_vowel test_str.[i]) then
      helper (i + 1) (count + 1)
    else
      helper (i + 1) count
  in
  helper 0 0
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:19: Unbound value "Set.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_vowels (test_str : string) : int =
  let vowel_set = ['a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U'] in
  let len = String.length test_str in
  let rec helper i count =
    if i = len then
      count
    else if (i > 0 && List.exists (fun x -> x = test_str.[i-1]) vowel_set && List.exists (fun x -> x = test_str.[i]) vowel_set) ||
              ((i < len-1) && List.exists (fun x -> x = test_str.[i+1]) vowel_set && List.exists (fun x -> x = test_str.[i]) vowel_set) then
      helper (i + 1) (count + 1)
    else
      helper (i + 1) count
  in
  helper 0 0
;;

