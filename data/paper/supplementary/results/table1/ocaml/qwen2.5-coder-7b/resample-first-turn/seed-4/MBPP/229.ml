let rec re_arrange_array (arr : int list) (n : int) : int list = 
  let partition lst =
    let rec aux neg pos remain =
      match remain with
      | [] -> (List.rev neg, List.rev pos)
      | x::xs ->
          if x < 0 then aux (x::neg) pos xs else aux neg (x::pos) xs
    in
    aux [] [] lst
  in
  let neg, pos = partition arr in
  if n <= List.length neg then
    (List.take n neg) @ (List.drop n neg) @ pos
  else
    List.append neg pos


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
