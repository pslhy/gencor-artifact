
let rec is_undulating (n : int) : bool = 
  let rec helper (num : int) (first : int) (second : int) (count : int) : bool = 
    match num with
    | 0 -> count > 1
    | _ -> 
        let current_digit = num mod 10 in
        if current_digit = first then
          helper (num / 10) first current_digit (count + 1)
        else if current_digit = second then
          helper (num / 10) second current_digit (count + 1)
        else
          false
  in
  match n with
  | _ when n < 100 -> false
  | _ -> 
      let first_digit = n mod 10 in
      let second_digit = (n / 10) mod 10 in
      helper n first_digit second_digit 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
