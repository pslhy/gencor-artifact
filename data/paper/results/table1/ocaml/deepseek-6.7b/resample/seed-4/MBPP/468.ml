(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
let rec max_product (arr : int list) : int =
  let len = List.length arr in
  if len < 3 then 1
  else if len = 3 then List.fold_left ( * ) 1 arr
  else
    let _, arr1, arr2 = 
      List.fold_left 
        (fun (first, arr1, arr2) v -> 
           if v > first then
             (v, arr1 @ [v], List.tl_exn arr2)
           else
             (first, arr1, arr2 @ [v])) 
        (List.hd_exn arr, [], List.tl_exn arr) 
        (List.tl_exn (List.tl_exn arr)) 
    in
    max (List.fold_left ( * ) 1 arr1) (List.fold_left ( * ) 1 arr2)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:30: Unbound value "List.tl_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_product (arr : int list) : int =
  let len = List.length arr in
  if len < 3 then 1
  else if len = 3 then List.fold_left ( * ) 1 arr
  else
    let _, arr1, arr2 = 
      List.fold_left 
        (fun (first, arr1, arr2) v -> 
           if v > first then
             (v, arr1 @ [v], List.tl_exn arr2)
           else
             (first, arr1, arr2 @ [v])) 
        (List.hd_exn arr, [], List.tl arr) 
        (List.tl arr) 
    in
    max (List.fold_left ( * ) 1 arr1) (List.fold_left ( * ) 1 arr2)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:30: Unbound value "List.tl_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_product (arr : int list) : int =
  let len = List.length arr in
  if len < 3 then 1
  else if len = 3 then List.fold_left ( * ) 1 arr
  else
    let _, arr1, arr2 = 
      List.fold_left 
        (fun (first, arr1, arr2) v -> 
           if v > first then
             (v, arr1 @ [v], List.tl arr2)
           else
             (first, arr1, arr2 @ [v])) 
        (List.hd_exn arr, [], List.tl arr) 
        (List.tl arr) 
    in
    max (List.fold_left ( * ) 1 arr1) (List.fold_left ( * ) 1 arr2)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:10: Unbound value "List.hd_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_product (arr : int list) : int =
  let len = List.length arr in
  if len < 3 then
    match arr with
    | [] -> 1
    | hd :: _ -> hd
  else if len = 3 then List.fold_left ( * ) 1 arr
  else
    let _, arr1, arr2 = 
      List.fold_left 
        (fun (first, arr1, arr2) v -> 
           if v > first then
             (v, arr1 @ [v], List.tl arr2)
           else
             (first, arr1, arr2 @ [v])) 
        (List.hd arr, [], List.tl arr) 
        (List.tl arr) 
    in
    max (List.fold_left ( * ) 1 arr1) (List.fold_left ( * ) 1 arr2)

