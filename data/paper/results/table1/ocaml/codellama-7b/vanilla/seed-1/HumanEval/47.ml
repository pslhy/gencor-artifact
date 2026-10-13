let rec median (l : int list) : float =
match l with
| [] -> failwith "Median of empty list"
| [x] -> float_of_int x
| [x; y] -> float_of_int (max x y)
| x :: y :: z :: xs ->
  let vs = x :: (y :: z :: xs) in
  let median_v = (List.length vs) / 2 in
  let vs' = List.nth vs median_v in
  if List.length vs' mod 2 = 0 then
    (List.nth vs (median_v - 1)) +. (List.nth vs median_v)
  else
    (float_of_int (List.nth vs (median_v - 1))) +. (List.nth vs median_v)
  |> fun x -> x /. 2.
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return median of elements in the list l. *)
(*     >>> median [3; 1; 2; 4; 5] *)
(*     3.0 *)
(*     >>> median [(-10); 4; 6; 1000; 10; 20] *)
(*     15.0 *)
