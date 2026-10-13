let rec armstrong_number (number : int) : bool =
  match number with
  | 0 -> true
  | _ -> let (x, y) = (number / 10, number mod 10) in
          let cube = y * y * y in
          if x = 0 then (cube = number)
          else (cube + armstrong_number x) = number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
