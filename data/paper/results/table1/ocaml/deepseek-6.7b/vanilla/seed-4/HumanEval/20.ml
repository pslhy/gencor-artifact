let rec find_closest_elements (numbers : float list) :  float * float =
  let rec aux xs closest_diff =
    match xs with
    | [] | [_] -> (0.0,0.0)
    | x::y::ys ->
        let new_closest = 
          if y -. x < closest_diff then (x, y)
          else closest_diff
        in aux (y::ys) new_closest
  in aux (List.sort compare numbers) 
         (List.nth numbers 1 -. List.hd numbers)


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
