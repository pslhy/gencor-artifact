(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
let rec count_reverse_pairs (test_list : string list) : int =
    match test_list with
    | [] -> 0
    | x :: xs ->
        let reverse_string = reverse_string x
        let count = count_reverse_pairs xs
        if List.exists (fun x -> x = reverse_string) xs then
            count + 1
        else
            count

and reverse_string (s : string) : string =
    let reverse_string = String.to_seq s |> Seq.rev |> String.of_seq
    reverse_string

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  match test_list with
  | [] -> 0
  | x :: xs ->
    let reverse_string = String.rev x
    let count = count_reverse_pairs xs
    if List.mem reverse_string xs
    then count + 1
    else count

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  match test_list with
  | [] -> 0
  | x :: xs ->
    let reverse_string = String.rev x
    let count = count_reverse_pairs xs
    if List.mem reverse_string xs
    then count + 1
    else count

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  match test_list with
  | [] -> 0
  | x :: xs ->
    let reverse_string = String.rev x
    let count = count_reverse_pairs xs
    if List.mem reverse_string xs
    then count + 1
    else count

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  match test_list with
  | [] -> 0
  | x :: xs ->
    let reverse_string = String.rev x
    let count = count_reverse_pairs xs
    if List.mem_string reverse_string xs
    then count + 1
    else count

