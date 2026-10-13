let rec find_closest_elements (numbers : float list) :  float * float =
    match numbers with
    | [] | [_] -> raise (Invalid_argument "List should have atleast two elements")
    | head::tail -> 
        let sorted_numbers = List.sort compare tail in
        let rec find_closest_pair (numbers : float list) : float * float =
            match numbers with
            | [] | [_] -> raise (Failure "No closest pair found")
            | head::(next::_ as tail) ->
                if head +. next < 0.0 then find_closest_pair tail
                else if next -. head < abs(List.hd tail -. head) then (head, next)
                else find_closest_pair tail
        in find_closest_pair sorted_numbers


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
