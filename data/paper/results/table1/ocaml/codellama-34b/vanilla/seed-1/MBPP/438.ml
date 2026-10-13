let rec count_bidirectional (test_list :  (int * int) list) : int =
    let rec aux count = function
        | [] -> count
        | (a, b) :: rest ->
            if List.mem (b, a) test_list = Some b then
                aux (count + 1) rest
            else
                aux count rest
    in aux 0 test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
