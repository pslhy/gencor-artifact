let rec get_ludic (n : int) : int list =
  if n < 2 then
    []
  else
    match n with
    | 2 -> [2]
    | 3 -> [2; 3]
    | _ ->
        let rec next_ludic number ludic =
          if List.exists (fun x -> number mod x = 0) ludic then
            next_ludic (number + 1) ludic
          else
            number :: ludic
        in
        let ludic = get_ludic (n - 1) in
        let ludic = List.fold_right (fun x acc -> if x mod n = 0 then acc else x :: acc) ludic [] in
        next_ludic 2 ludic

let test = get_ludic 20


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
