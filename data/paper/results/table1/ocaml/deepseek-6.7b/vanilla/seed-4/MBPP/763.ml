let rec find_min_diff (arr : int list) (n : int) : int =
  let rec aux xs acc min1 min2 =
    match xs with
    | [] -> min2
    | x :: xs ->
      let new_min1, new_min2 =
        if x < min1 then x, min1
        else if x < min2 then x, min1
        else min1, min2 in
      aux xs (acc + 1) new_min1 new_min2
  in
  if n < 2 then raise (Invalid_argument "Array should have at least two elements")
  else aux (List.sort compare arr) 0 (List.hd arr) (List.hd (List.tl arr))

(* Test cases *)
let arr1 = [1; 5; 3; 19; 18; 25]
let arr2 = [1; 19; 18; 25]

let res1 = find_min_diff arr1 (List.length arr1)
let res2 = find_min_diff arr2 (List.length arr2)

Printf.printf "Min Difference in arr1: %d\n" res1;
Printf.printf "Min Difference in arr2: %d\n" res2;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
