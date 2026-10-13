let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
    let area = (float_of_int base1) *. (float_of_int base2) /. 2. in
    (float_of_int height) *. sqrt (area /. PI)
;;

let () =
    assert (median_trapezium 10 5 3. = 5.);
    assert (median_trapezium 3 5 4. = 4.);
    assert (median_trapezium 6 4 5. = 5.);
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
