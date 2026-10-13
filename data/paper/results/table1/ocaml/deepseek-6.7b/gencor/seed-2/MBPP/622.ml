
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then
    failwith "Lists must have same size"
  else if n = 1 then
    float_of_int (List.nth arr1 0 + List.nth arr2 0) /. 2.0
  else
    let mid_index = n/2 in
    if List.nth arr1 mid_index > List.nth arr2 mid_index then
      get_median (List.tl arr1) (List.tl (List.rev (List.init mid_index (fun i -> List.nth arr2 i)))) n
    else
      get_median (List.tl (List.rev (List.init mid_index (fun i -> List.nth arr1 i)))) (List.tl arr2) n
;;

let find_median (l1 : int list) (l2 : int list) : float =
  get_median (List.sort compare l1) (List.sort compare l2) (List.length l1)
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
