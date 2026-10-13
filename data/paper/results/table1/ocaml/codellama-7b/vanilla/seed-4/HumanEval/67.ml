let rec fruit_distribution (s : string) (n : int) : int =
  if s = "" then 0
  else
    let (apple, orange) =
      try
        let (a, o) = Scanf.sscanf s " %d apples and %d oranges" (fun a o -> (a, o))
        (a, o)
      with _ -> (0, 0)
    in
    let mango = n - (apple + orange)
    in
    if mango < 0 then 0
    else if mango > n then n
    else mango

let () =
  let tests = [
    ("5 apples and 6 oranges", 19, 8);
    ("0 apples and 1 oranges", 3, 2);
    ("2 apples and 3 oranges", 100, 95);
    ("100 apples and 1 oranges", 120, 19)
  ]
  in
  List.iter
    (fun (s, n, expected) ->
      if fruit_distribution s n = expected then
        Printf.printf "OK: %.2f %%\n" 100.
      else
        Printf.printf "KO: %.2f %%\n"
                 (100. *. (float_of_int (fruit_distribution s n) -. float_of_int expected) /. float_of_int n))
    tests


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this task, you will be given a string that represents a number of apples and oranges *)
(*     that are distributed in a basket of fruit this basket contains *)
(*     apples, oranges, and mango fruits. Given the string that represents the total number of *)
(*     the oranges and apples and an integer that represent the total number of the fruits *)
(*     in the basket return the number of the mango fruits in the basket. *)
(*     for examble: *)
(*     >>> fruit_distribution "5 apples and 6 oranges" 19 *)
(*     8 *)
(*     >>> fruit_distribution "0 apples and 1 oranges" 3 *)
(*     2 *)
(*     >>> fruit_distribution "2 apples and 3 oranges" 100 *)
(*     95 *)
(*     >>> fruit_distribution "100 apples and 1 oranges" 120 *)
(*     19 *)
