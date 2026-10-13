let rec median (l : int list) : float =
  match l with
  | [] -> failwith "median of empty list"
  | [x] -> float_of_int x
  | x :: y :: _ -> (float_of_int x +. float_of_int y) /. 2.0

let () =
  let l = [3; 1; 2; 4; 5] in
  Printf.printf "median of [%s] = %f\n"
                (String.concat "; " (List.map string_of_int l))
                (median l)

let () =
  let l = [(-10); 4; 6; 1000; 10; 20] in
  Printf.printf "median of [%s] = %f\n"
                (String.concat "; " (List.map string_of_int l))
                (median l)


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
