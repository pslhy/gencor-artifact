let rec max_subarray_product (arr : int list) : int =
    let rec helper (array: int list) (cur_max: int) (cur_min: int) : int =
        match array with
        | [] -> cur_max
        | hd::tl ->
            let temp_max = hd * cur_max in
            let new_max = if hd > temp_max then hd else temp_max in
            let temp_min = hd * cur_min in
            let new_min = if hd < temp_min then hd else temp_min in
            helper tl new_max new_min
    in helper arr 1 1

(* Test Cases *)
let list1 = [1; 2; 3; 0; -1; -5; 4]
let list2 = [-2; -3; -4; -2]
let list3 = [2; 3; 4; 2; 4; 3]

let () =
    Printf.printf "List1 max product: %d\n" (max_subarray_product list1);
    Printf.printf "List2 max product: %d\n" (max_subarray_product list2);
    Printf.printf "List3 max product: %d\n" (max_subarray_product list3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
