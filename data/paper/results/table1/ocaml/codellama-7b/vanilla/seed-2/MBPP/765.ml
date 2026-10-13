let rec is_polite (n : int) : int =
  let d = digits n in
  let rec is_divisible_by_digit (d : int) =
    if d = 0 then 0 else
    let n = n / 10 in
    if n mod d = 0 then is_divisible_by_digit (d - 1) else 1 in
  match d with
  | 0 -> 1
  | 1 -> 0
  | _ -> is_polite (n / 10) * is_divisible_by_digit (d - 1)

let nth_polite_number (n : int) : int =
  let rec find_nth_polite_number (n : int) (i : int) : int =
    if is_polite i = n then i else
    find_nth_polite_number n (i + 1) in
  find_nth_polite_number n 1

let () =
  assert (is_polite 123 == 1);
  assert (is_polite 123456 == 1);
  assert (is_polite 1234567 == 1);
  assert (is_polite 12345678 == 1);
  assert (is_polite 123456789 == 1);

  assert (is_polite 123abc == 0);
  assert (is_polite abc123 == 0);
  assert (is_polite 123abcdef == 0);
  assert (is_polite defabc123 == 0);

  assert (nth_polite_number 1 == 1);
  assert (nth_polite_number 2 == 12);
  assert (nth_polite_number 3 == 123);
  assert (nth_polite_number 4 == 1234567);
  assert (nth_polite_number 5 == 1234578);
  assert (nth_polite_number 6 == 123456781);
  assert (nth_polite_number 7 == 1234567890123);

  assert (is_polite (nth_polite_number 1) == 1);
  assert (is_polite (nth_polite_number 2) == 1);
  assert (is_polite (nth_polite_number 3) == 1);
  assert (is_polite (nth_polite_number 4) == 1);
  assert (is_polite (nth_polite_number 5) == 1);
  assert (is_polite (nth_polite_number 6) == 1);
  assert (is_polite (nth_polite_number 7) == 1);


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
