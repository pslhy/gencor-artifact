let rec is_undulating (n : int) : bool = 
  let rec helper (num : int) (first : int) (second : int) (count : int) : bool = 
    match num with
    | 0 -> count > 1
    | _ -> 
        let current_digit = num mod 10 in
        if current_digit = first then
          helper (num / 10) first current_digit (count + 1)
        elif current_digit = second then
          helper (num / 10) second first (count + 1)
        else
          false
  in
  if n < 100 then false else
  helper n (n mod 10) (n / 10 mod 10) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
