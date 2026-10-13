let rec sort_matrix (m : int list list) : int list list =
  if List.length m <= 1 then
    m
  else
    let (pivot, _) = List.fold_left (fun (p, s) x -> if s < x then (p + 1, x) else (p, s)) (0, 0) (-1) in
    let left = List.take pivot m in
    let right = List.drop (pivot + 1) m in
    sort_matrix left @ [List.nth pivot m] @ sort_matrix right


let main () : unit =
  let m = [[1;2;3]; [4;5;6]; [7;8;9]] in
  Printf.printf "%s\n" (String.concat "\n" (List.map (fun lst -> String.concat " " (List.map string_of_int lst)) (sort_matrix m)));
  exit 0

let () = main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
