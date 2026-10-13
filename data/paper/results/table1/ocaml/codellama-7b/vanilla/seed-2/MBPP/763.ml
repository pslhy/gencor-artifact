let rec find_min_diff (arr : int list) (n : int) : int =
    match arr with
    | [] | _ :: [] -> failwith "List is empty"
    | x :: y :: rest ->
        let min_diff = min (abs (x - y)) (find_min_diff (y :: rest) (n - 1)) in
        if x - y < min_diff then
            abs (x - y)
        else
            find_min_diff (y :: rest) (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
