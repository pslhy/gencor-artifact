
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
    (* Merge the three lists with head and tail recursions *)
        match (num1, num2, num3) with
        | ([], [], []) -> [] (* Empty list *)
        | ([], [], x::xs) -> x::(merge_sorted_list [] num2 xs) (* Case 1: No more elements in first list, second list is not empty *)
        | (x::xs, [], []) -> x::(merge_sorted_list num1 num2 []) (* Case 2: No more elements in second list, first list is not empty *)
        | (x::xs, [], y::ys) -> if x < y then x::(merge_sorted_list num1 num2 ys) else y::(merge_sorted_list num1 [x] ys) (* Case 3: Both lists are not empty, merge the elements *)
        | ([], x::xs, []) -> x::(merge_sorted_list [] num1 []) (* Case 4: No more elements in first list, third list is not empty *)
        | ([], x::xs, y::ys) -> if x < y then x::(merge_sorted_list [] num1 ys) else y::(merge_sorted_list [] num1 ys) (* Case 5: Both lists are not empty, merge the elements *)
        | (x::xs, x_head, x_tail) -> if x < x_head then x::(merge_sorted_list xs num2 [x_head; x_tail]) (* Case 6: First list has an element less than the head of the second list *)
                                     else x::(merge_sorted_list num1 xs [x_head; x_tail]) (* Case 7: Second list has an element less than the head of the first list *)
        | _ -> failwith "Lists cannot be empty at the same time."

let merge_lists (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
    let num1_sorted = List.sort compare num1 (* Sort the first list *)
    in let num2_sorted = List.sort compare num2 (* Sort the second list *)
    in let num3_sorted = List.sort compare num3 (* Sort the third list *)
    in merge_sorted_list num1_sorted num2_sorted num3_sorted (* Merge the sorted lists *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
