let rec rotate_right (list : int list) (m : int) : int list = 
    match (list, m) with
    | [], 0 -> []
    | [], _ -> raise (Failure "Invalid input") (* TypeError in OCaml *)
    | list, 1 -> list
    | list, n ->
        let ll = ref list in
        for i = 1 to n - 1 do
            ll := take_last !ll
        done;
        take_last !ll

and take_last list = match list with
| [] -> []
| [x] -> []
| _ :: rest -> list_append (take_last rest) [x] ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
