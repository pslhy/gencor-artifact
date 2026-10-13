(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool = 
    (* base case: if the list is empty, there is no majority element *)
    if n = 0 then false
    (* check if the first element is the majority element *)
    else if arr[0] = x && is_majority(arr.tl, n-1, x) then true
    (* if the first element is not the majority element, recursively search the remaining elements *)
    else false

