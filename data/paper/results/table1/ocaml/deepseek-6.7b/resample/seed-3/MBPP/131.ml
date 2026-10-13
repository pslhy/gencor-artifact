(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
let rec reverse_vowels (str1 : string) : string =
  let str1 = String.uppercase_ascii str1 in
  let vowels = [ 'A'; 'E'; 'I'; 'O'; 'U' ] in
  let is_vowel c = List.exists (fun v -> c = v) vowels in
  let rec rev_vowels acc = function
    | [] -> List.rev acc
    | h::t -> if is_vowel h then rev_vowels (h::acc) t else rev_vowels (List.tl acc @ [h]) t in
  String.of_char_list (rev_vowels [] (String.to_list str1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:3: Unbound value "String.of_char_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  let str1 = String.uppercase_ascii str1 in
  let vowels = [ 'A'; 'E'; 'I'; 'O'; 'U' ] in
  let is_vowel c = List.exists (fun v -> c = v) vowels in
  let rec rev_vowels = function
    | ([], acc) -> String.of_char_list (List.rev acc)
    | (h::t, acc) -> if is_vowel h then rev_vowels (t, h::acc) else rev_vowels (t, List.tl acc @ [h]) in
  rev_vowels (String.to_list str1, [])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "String.of_char_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  let str1 = String.uppercase_ascii str1 in
  let vowels = ['A'; 'E'; 'I'; 'O'; 'U'] in
  let is_vowel c = List.mem c vowels in
  let rec rev_vowels = function
    | ([], acc) -> List.to_seq acc |> String.of_seq
    | (h::t, acc) -> if is_vowel h then rev_vowels (t, h::acc) else rev_vowels (t, List.tl acc @ [h])
  in
  rev_vowels (String.to_list str1, [])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  let str1 = String.uppercase_ascii str1 in
  let vowels = ['A'; 'E'; 'I'; 'O'; 'U'] in
  let is_vowel c = List.mem c vowels in
  let rec rev_vowels = function
    | ([], acc) -> List.to_seq acc |> String.of_seq
    | (h::t, acc) -> if is_vowel h then rev_vowels (t, h::acc) else rev_vowels (t, List.tl acc @ [h])
  in
  let str1 = [%char] str1 in
  rev_vowels (str1, []) |> String.uppercase_ascii

