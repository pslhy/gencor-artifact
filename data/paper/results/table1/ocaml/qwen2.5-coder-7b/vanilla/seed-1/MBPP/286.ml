let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec max_sub_array_sum (a : int list) (n : int) (max_current : int) (max_global : int) : int = 
    match a with
    | [] -> max_global
    | x::xs -> 
      let max_current' = max x (max_current + x) in
      let max_global' = max max_global max_current' in
      max_sub_array_sum xs n max_current' max_global' 
  in
  let rec find_max_cross_sum (a : int list) (left : int) (right : int) : int = 
    let mid = (left + right) / 2 in
    let rec max_left_sum (a : int list) (left : int) (sum : int) : int = 
      match a with
      | [] -> sum
      | x::xs when left >= 0 -> max_left_sum xs (left - 1) (sum + x)
      | _ -> sum
    in
    let rec max_right_sum (a : int list) (right : int) (sum : int) : int = 
      match a with
      | [] -> sum
      | x::xs when right < n -> max_right_sum xs (right + 1) (sum + x)
      | _ -> sum
    in
    let max_left = max_left_sum a mid 0 in
    let max_right = max_right_sum a (mid + 1) 0 in
    max (max_left + max_right) (max_sub_array_sum a n max_left 0) (max_sub_array_sum a n 0 max_right)
  in
  let modified_list = List.concat (List.init k (fun _ -> a)) in
  max_sub_array_sum modified_list (n * k) (List.hd modified_list) (List.hd modified_list)

let largest_sum = max_sub_array_sum_repeated [1;2;3;4] 4 2
print_int largest_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
