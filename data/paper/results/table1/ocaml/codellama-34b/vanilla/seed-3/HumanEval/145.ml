let rec order_by_points (nums : int list) : int list =
  if nums = [] then
    []
  else
    let n, ns = List.hd nums, List.tl nums in
    let points n = List.fold_left (fun acc x -> acc + (abs x)) 0 n in
    let smaller, equal, larger = List.partition (fun x -> points x <= points n), List.filter (fun x -> points x = points n), List.filter (fun x -> points x > points n) in
    smaller @ List.sort equal @ larger

let () =
  let nums = [1; 11; (-1); (-11); (-12)] in
  print_endline (order_by_points nums = [(-1); (-11); 1; (-12); 11])

let () =
  let nums = [] in
  print_endline (order_by_points nums = [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
