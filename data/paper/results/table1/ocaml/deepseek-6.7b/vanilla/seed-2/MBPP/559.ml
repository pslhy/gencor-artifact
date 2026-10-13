let rec max_sub_array_sum (a : int list) (size : int) : int =
  if size <= 0 then 
    raise (Invalid_argument "Invalid size");
  let curr_sum = ref (List.hd a) in
  let max_sum = ref (List.hd a) in
  let start = ref 0 in
  let len = List.length a in
  let _ = List.iteri (fun i _ ->
    if i < size then ()
    else (
      curr_sum := !curr_sum - List.nth a (i - size) + List.nth a (i % len);
      if !curr_sum > !max_sum then (
        max_sum := !curr_sum;
        start := (i % len) - size + 1
      )
    )
  ) a in
  while !start < 0 do 
    start := !start + len
  done;
 (!max_sum, !start, !start + size - 1)

let _ =
  let a = [1; 5; 7; -6; 8; 9; -2] in
  let sum, start, end_ = max_sub_array_sum a 3 in
  Printf.printf "Sum: %i, Start: %i, End: %i\n" sum start end_


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
