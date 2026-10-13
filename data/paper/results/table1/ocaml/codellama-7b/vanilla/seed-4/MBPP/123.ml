let rec amicable_numbers_sum (limit : int) : int =
  let amicable_numbers =
    List.filter (fun (x, y) -> x <> y && x + y = 2 * limit)
      (List.init (limit + 1) (fun x -> (x, sum_of_divisors x)))
  in
  List.fold_left (+) 0 amicable_numbers

and sum_of_divisors (n : int) : int =
  let rec helper (n : int) (sum : int) : int =
    if n = 1 then
      sum
    else
      helper (n / 2) (if n mod 2 = 0 then sum + n else sum)
  in
  helper n 1

let main () : unit =
  Printf.printf "Sum of amicable numbers from 1 to %d: %d\n" limit (amicable_numbers_sum limit)

let () = main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
