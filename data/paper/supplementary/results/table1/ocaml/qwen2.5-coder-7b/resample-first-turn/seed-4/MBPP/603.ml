let rec get_ludic (n : int) : int list = 
  let rec calculate_ludics current Ludic_numbers remainders =
    if remainders = [] then Ludic_numbers
    else
      let next_position = n / current in
      calculate_ludics (current + 1) ((Ludic_numbers @ [c]) :: Ludic_numbers) (List.filter (fun x -> x < c) remainders)
  in let from_2_to_n = 2 to n in
  let sorted_nums = List.sort compare from_2_to_n in
  calculate_ludics 2 [] sorted_nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
