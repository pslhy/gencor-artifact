(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
let rec extract_freq (test_list :  (int * int) list) : int =
match test_list with
| [] -> 0
| x :: xs ->
     if List.mem_freq x xs  then extract_freq xs else 1 + extract_freq xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound value "List.mem_freq" *)
(*     Hint: Did you mean "mem_assq"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int =
    match test_list with
    | [] -> 0
    | (x, y) :: xs ->
        if List.mem_assq x xs then
            extract_freq xs
        else
            extract_freq xs

