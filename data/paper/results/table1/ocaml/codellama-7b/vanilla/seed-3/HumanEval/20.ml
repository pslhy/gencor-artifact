let rec find_closest_elements (numbers : float list) :  float * float =
  match numbers with
  | n1::n2::_ when abs_float (n1 -. n2) < 1e-10 -> (n1, n2)
  | n1::n2::ns ->
    let (closest1, closest2) = find_closest_elements (n2::ns) in
    if abs_float (n1 -. closest1) < abs_float (n1 -. closest2) then
      (n1, closest1)
    else
      (closest2, n2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a supplied list of numbers (of length at least two) select and return two that are the closest to each *)
(*     other and return them in order (smaller number, larger number). *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] *)
(*     (2.0, 2.2) *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.0] *)
(*     (2.0, 2.0) *)
