let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    match num1, num2, num3 with
    | (x::xs), (y::ys), (z::zs) -> (x + y + z) :: merge_sorted_list xs ys zs
    | [], (y::ys), (z::zs) -> (y + z) :: merge_sorted_list [] ys zs
    | (x::xs), [], (z::zs) -> (x + z) :: merge_sorted_list xs [] zs
    | (x::xs), (y::ys), [] -> (x + y) :: merge_sorted_list xs ys []
    | [], _, _ -> []
    | _, [], _ -> []
    | _, _, [] -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
