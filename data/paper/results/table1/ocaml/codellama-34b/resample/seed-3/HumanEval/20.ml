(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     From a supplied list of numbers (of length at least two) select and return two that are the closest to each *)
(*     other and return them in order (smaller number, larger number). *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] *)
(*     (2.0, 2.2) *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.0] *)
(*     (2.0, 2.0) *)
let rec find_closest_elements (numbers : float list) :  float * float =
    if List.length numbers <= 2 then
        (List.hd numbers, List.hd (List.tl numbers))
    else
        let (smaller, larger) = find_closest_elements (List.tl numbers) in
        if abs (smaller - larger) >= abs (List.hd numbers - larger) then
            (List.hd numbers, larger)
        else
            (smaller, larger)

