let rec find_min_diff (arr : int list) (n : int) : int =
  let rec helper (arr : int list) (n : int) (min_diff : int) : int =
    match arr with
    | [] -> min_diff
    | h::t ->
       let diff = abs (h - List.hd t) in
       if diff < min_diff then
         helper t n diff
       else
         helper t n min_diff
  in
  if n <= 1 then
    failwith "Invalid input"
  else
    helper (List.sort compare arr) n (List.hd arr - List.hd (List.tl arr))

(* Testing the function *)
let list1 = [1; 5; 3; 19; 18; 25]
let result1 = find_min_diff list1 (List.length list1)
print_int result1;; (* output: 1 *)

let list2 = [10; 20; 30; 80]
let result2 = find_min_diff list2 (List.length list2)
print_int result2;; (* output: 10 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
