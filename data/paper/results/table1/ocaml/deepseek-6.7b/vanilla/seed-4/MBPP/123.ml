let rec amicable_numbers_sum (limit : int) : int =
  let rec d x =
    let rec loop y acc =
      if y = 0 then acc
      else
        if (x mod y) = 0 then loop (y-1) (acc + y)
        else loop (y-1) acc
    in loop (x / 2) 0
  in
  let rec loop x acc =
    if x <= 0 then acc
    else
      let a = d x in
      if a < x then
        if (d a) = x then loop (x-1) (acc + x + a)
        else loop (x-1) acc
      else loop (x-1) acc
  in loop limit 0

let result = amicable_numbers_sum 10000


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
