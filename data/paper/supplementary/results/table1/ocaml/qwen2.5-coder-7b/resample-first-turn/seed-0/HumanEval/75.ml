let rec is_multiply_prime (a : int) : bool = 
  let is_prime n =
    if n <= 1 then false
    elif n <= 3 then true
    elif n mod 2 = 0 || n mod 3 = 0 then false
    else
      let rec check d =
        if d * d > n then true
        elif n mod d = 0 || n mod (d + 2) = 0 then false
        else check (d + 6)
      in check 5
  in
  match (ref false, ref false, ref false) with
  | (a_ref, b_ref, c_ref) ->
    for i = 2 to 97 do
      if a mod i = 0 && is_prime i then
        a_ref := true;
        for j = 2 to 97 do
          if a mod j = 0 && is_prime j && i <> j then
            b_ref := true;
            for k = 2 to 97 do
              if a mod k = 0 && is_prime k && i <> j && j <> k then
                c_ref := true;
      if !a_ref && !b_ref && !c_ref then
        return true;
    done;
    false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
