let rec circular_shift (x : int) (shift : int) : string =
  let str_x = string_of_int x in
  let len = String.length str_x in
  if (shift > len) then String.rev str_x
  else
    let rec helper l = 
      match l with 
      | [] -> []
      | _::[] -> l
      | h::tail -> (List.nth l (shift))::(helper tail)
    in  
    let l = List.of_seq (String.to_seq str_x) in
    String.concat "" (List.map string_of_char (helper l))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
