let rec is_multiply_prime (a : int) : bool =
    match a with
    | 0 | 1 -> false
    | 2 -> true
    | _ -> let rec loop x y =
               match x with
               | 0 | 1 -> false
               | 2 -> true
               | _ -> let z = x * y
                      if z < a then
                          if is_prime z then
                              loop (x / y) (y+1)
                          else
                              false
                      else
                          true
           loop a 2


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
