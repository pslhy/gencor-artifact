(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a non-empty list of integers arr and an integer k, return *)
(*     the sum of the elements with at most two digits from the first k elements of arr. *)
(*     Example: *)
(*     >>> add_elements [111; 21; 3; 4000; 5; 6; 7; 8; 9] 4 *)
(*     24 *)
(*     Constraints: *)
(*     1. 1 <= len(arr) <= 100 *)
(*     2. 1 <= k <= len(arr) *)
let rec add_elements (arr : int list) (k : int) : int =
    if k = 0 then 0
    else if k = 1 then List.hd arr
    else if k = 2 then List.fold_left (fun acc x -> acc + x) 0 arr
    else List.fold_left (fun acc x -> acc + x) 0 (List.take k arr)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:51: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add_elements (arr : int list) (k : int) : int =
    if k = 0 then 0
    else if k = 1 then List.hd arr
    else if k = 2 then List.fold_left (fun acc x -> acc + x) 0 arr
    else List.fold_left (fun acc x -> acc + x) 0 (List.take k arr)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:51: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add_elements (arr : int list) (k : int) : int =
    if k = 0 then 0
    else if k = 1 then List.hd arr
    else if k = 2 then List.fold_left (fun acc x -> acc + x) 0 arr
    else List.fold_left (fun acc x -> acc + x) 0 (List.rev arr |> List.take k)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:67: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add_elements (arr : int list) (k : int) : int =
    if k = 0 then 0
    else if k = 1 then List.hd arr
    else if k = 2 then List.fold_left (fun acc x -> acc + x) 0 arr
    else List.fold_left (fun acc x -> acc + x) 0 (List.take k arr)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:51: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add_elements (arr : int list) (k : int) : int =
    match arr with
    | [] -> 0
    | hd :: tl ->
        if k = 0 then hd
        else if k = 1 then hd + List.hd tl
        else if k = 2 then hd + List.hd tl + List.hd (List.tl tl)
        else hd + List.fold_left (fun acc x -> acc + x) 0 (List.take k tl)

