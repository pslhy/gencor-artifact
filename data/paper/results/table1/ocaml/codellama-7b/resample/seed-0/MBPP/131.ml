(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
let rec reverse_vowels (str1 : string) : string =
  if str1.[0] <> 'a' && str1.[0] <> 'e' && str1.[0] <> 'i' && str1.[0] <> 'o' && str1.[0] <> 'u'
  then reverse_vowels (str1.[1 .. -1])
  else str1

let rev_str (str1 : string) : string =
  "aeiou" |> List.map ~f:(fun c -> reverse_vowels (String.map ~f:(fun x -> if x = c then c else x) str1)) |> String.concat ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:32: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  if str1 = "" then ""
  else if str1.[0] = 'a' || str1.[0] = 'e' || str1.[0] = 'i' || str1.[0] = 'o' || str1.[0] = 'u' then
    reverse_vowels str1.[1 .. -1]
  else if str1.[0] = 'A' || str1.[0] = 'E' || str1.[0] = 'I' || str1.[0] = 'O' || str1.[0] = 'U' then
    reverse_vowels str1.[1 .. -1]
  else str1

let rev_str (str1 : string) : string =
  "aeiou" |> List.map ~f:(fun c -> reverse_vowels (String.map ~f:(fun x -> if x = c then c else x) str1)) |> String.concat ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:28: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  if str1 = "" then ""
  else if str1.[0] = 'a' || str1.[0] = 'e' || str1.[0] = 'i' || str1.[0] = 'o' || str1.[0] = 'u' then
    reverse_vowels str1.[1 .. -1]
  else if str1.[0] = 'A' || str1.[0] = 'E' || str1.[0] = 'I' || str1.[0] = 'O' || str1.[0] = 'U' then
    reverse_vowels str1.[1 .. -1]
  else str1

let rev_str (str1 : string) : string =
  "aeiou" |> List.map ~f:(fun c -> reverse_vowels (String.map ~f:(fun x -> if x = c then c else x) str1)) |> String.concat ""

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:28: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  if str1 = "" then ""
  else if str1.[0] = 'a' || str1.[0] = 'e' || str1.[0] = 'i' || str1.[0] = 'o' || str1.[0] = 'u' then
    reverse_vowels str1.[1 .. -1]
  else if str1.[0] = 'A' || str1.[0] = 'E' || str1.[0] = 'I' || str1.[0] = 'O' || str1.[0] = 'U' then
    reverse_vowels str1.[1 .. -1]
  else str1

let rev_str (str1 : string) : string =
  "aeiou" |> List.map ~f:(fun c -> reverse_vowels (String.map ~f:(fun x -> if x = c then c else x) str1)) |> String.concat ""

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:28: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  if str1 = "" then ""
  else if str1.[0] = 'a' || str1.[0] = 'e' || str1.[0] = 'i' || str1.[0] = 'o' || str1.[0] = 'u' then
    reverse_vowels str1.[1 .. -1]
  else if str1.[0] = 'A' || str1.[0] = 'E' || str1.[0] = 'I' || str1.[0] = 'O' || str1.[0] = 'U' then
    reverse_vowels str1.[1 .. -1]
  else str1

let rev_str (str1 : string) : string =
  "aeiou" |> List.map ~f:(fun c -> reverse_vowels (String.map ~f:(fun x -> if x = c then c else x) str1)) |> String.concat ""

