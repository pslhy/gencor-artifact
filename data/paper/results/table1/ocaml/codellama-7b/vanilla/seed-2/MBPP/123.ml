let rec amicable_numbers_sum (limit : int) : int =
  let amicable_numbers =
    let rec amicable_numbers_aux (n : int) (amicable_numbers : int list) : int list =
      if n > limit then
        amicable_numbers
      else
        let d_of_n = sum_of_divisors n in
        let d_of_d_of_n = sum_of_divisors d_of_n in
        if d_of_d_of_n = n then
          amicable_numbers_aux (n + 1) (n :: amicable_numbers)
        else
          amicable_numbers_aux (n + 1) amicable_numbers
    in
    amicable_numbers_aux 1 []
  in
  List.fold_right (+) amicable_numbers 0

and sum_of_divisors (n : int) : int =
  let rec sum_of_divisors_aux (n : int) (i : int) (acc : int) : int =
    if i > n then
      acc
    else
      match n mod i with
      | 0 -> sum_of_divisors_aux n (i + 1) (acc + i)
      | _ -> sum_of_divisors_aux n (i + 1) acc
  in
  sum_of_divisors_aux n 1 0

let ( := ) variable expression = expression

let main () =
  let n = 100 in
  print_int (amicable_numbers_sum n)

let () = main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
