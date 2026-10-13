
let rec re_arrange_array (arr : int list) (n : int) : int list =
  if n = 0 then
    arr
  else
    match arr with
    | [] -> []
    | x :: xs when x < 0 -> -x :: re_arrange_array (re_arrange_array xs n) n
    | x :: xs when x > 0 -> x :: re_arrange_array (re_arrange_array xs n) n
    | _ -> 0 :: re_arrange_array (re_arrange_array arr (n - 1)) n

let () =
  let arr = [| 1; -2; 3; 4; -5; 6; -7; 8 |] in
  Printf.printf "Arr: %d\n" arr |> ignore;
  let arr_sorted = re_arrange_array arr (Array.length arr) in
  Printf.printf "Arr sorted: %d\n" arr_sorted |> ignore;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
