let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    match test_list with
        | [] -> []
        | [m] -> [m]
        | _ ->
            let (min_ele, idx) = min_k_aux (List.tl test_list) k in
            if (fst min_ele <= fst (List.hd test_list)) then [min_ele] else (List.hd test_list) :: min_ele

and min_k_aux (lst : (string * int) list) (k : int) :  (string * int) =
    match lst with
        | [] -> raise Not_found
        | [m] -> (m, 0)
        | _ ->
            let (ele, idx) = min_k_aux (List.tl lst) k in
            if (snd ele < snd (List.hd lst)) then (ele, idx)
            else (List.hd lst, idx + 1)

let test_cases : (string * int) list list = [
    ["a", 3];
    ["b", 2];
    ["c", 1]
];;

min_k test_cases 2;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
