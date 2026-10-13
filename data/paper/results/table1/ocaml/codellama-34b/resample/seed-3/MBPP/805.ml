(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
let rec max_sum_list (lists : int list list) : int list =
  if List.length lists = 1 then
    List.hd lists
  else
    let (sum, max) = List.fold_left (fun (sum, max) l -> (sum + List.fold_left (fun acc x -> acc + x) 0 l, max max sum)) (0, []);
    max
;;

max_sum_list [[1; 2]; [3; 4]; [5; 6]; [7; 8]];;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_list (lists : int list list) : int list =
  let rec aux acc rest =
    if rest = [] then
      acc
    else
      let (sum, max) = List.fold_left (fun (sum, max) l -> (sum + List.fold_left (fun acc x -> acc + x) 0 l, max max sum)) (0, []) rest in
      aux (List.fold_left (fun acc x -> acc + x) 0 max) (List.tl rest)
  in
  aux [] lists
;;

max_sum_list [[1; 2]; [3; 4]; [5; 6]; [7; 8]];;

