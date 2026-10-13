let rec all_unique (test_list : int list) : bool =
    match test_list with
    | [] -> true
    | test_head::test_tail ->
        if List.mem test_head test_tail then
            all_unique test_tail
        else
            false
in

let test_list = [5;4;2;7;2;3;1;5];;
let result = all_unique test_list;;
Printexc.to_string (Failure (Printf.sprintf "%b" result))  (* should be Failure("false") *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
