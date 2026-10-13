(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    let rec aux min_k_so_far = function
        | [] -> min_k_so_far
        | (x, y) :: rest ->
            if List.length min_k_so_far < k then
                aux ((x, y) :: min_k_so_far) rest
            else
                let (min_x, min_y) = List.hd min_k_so_far in
                if y < min_y then
                    aux ((x, y) :: (min_x, min_y) :: List.tl min_k_so_far) rest
                else
                    aux min_k_so_far rest
    in
    aux [] test_list
;;

