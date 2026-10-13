let rec max_sum (arr : int list) : int =
  let length = List.length arr in
  let rec max_sum' (i : int) (j : int) (max_val : int) : int =
    if i >= j then max_val else
    max_val |> max (List.nth arr i) |> max_sum' (i+1) j in
  max_sum' 0 (length - 1) 0

let rec max_bitonic_sum (arr : int list) : int =
  let length = List.length arr in
  let dp_inc = Array.make length 0 in
  let dp_dec = Array.make length 0 in

  dp_inc.(0) <- arr.(0);
  dp_dec.(length - 1) <- arr.(length - 1);

  for i = 1 to length - 1 do
    dp_inc.(i) <- max dp_inc.(i-1) (arr.(i) + dp_inc.(i-1))
  done;

  for i = length - 2 downto 0 do
    dp_dec.(i) <- max dp_dec.(i+1) (arr.(i) + dp_dec.(i+1))
  done;

  let answer = ref (max (max_sum dp_inc) (max_sum dp_dec)) in

  for i = 0 to length - 1 do
    if i > 0 && i < length - 1 then
      answer := max !answer (arr.(i) + dp_inc.(i-1) + dp_dec.(i+1))
  done;

  !answer


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
