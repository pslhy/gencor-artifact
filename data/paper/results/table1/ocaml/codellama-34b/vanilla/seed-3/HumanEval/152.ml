let rec compare (game : int list) (guess : int list) : int list =
  if game = [] || guess = [] then
    []
  else if List.hd game = List.hd guess then
    0 :: compare (List.tl game) (List.tl guess)
  else
    abs (List.hd game - List.hd guess) :: compare (List.tl game) (List.tl guess)
;;

let compare_list game guess =
  compare game guess |> List.filter ((<>) 0) |> List.map string_of_int
;;

let () =
  let game = [1; 2; 3; 4; 5; 1] in
  let guess = [1; 2; 3; 4; 2; (-2)] in
  Printf.printf "The first list is: %s\n" (compare_list game guess |> String.concat ", ");
  Printf.printf "The second list is: %s\n" (compare_list guess game |> String.concat ", ");
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     I think we all remember that feeling when the result of some long-awaited *)
(*     event is finally known. The feelings and thoughts you have at that moment are *)
(*     definitely worth noting down and comparing. *)
(*     Your task is to determine if a person correctly guessed the results of a number of matches. *)
(*     You are given two lists of scores and guesses of equal length, where each index shows a match. *)
(*     Return a list of the same length denoting how far off each guess was. If they have guessed correctly, *)
(*     the value is 0, and if not, the value is the absolute difference between the guess and the score. *)
(*     example: *)
(*     >>> compare [1; 2; 3; 4; 5; 1] [1; 2; 3; 4; 2; (-2)] *)
(*     [0; 0; 0; 0; 3; 3] *)
(*     >>> compare [0; 5; 0; 0; 0; 4] [4; 1; 1; 0; 0; (-2)] *)
(*     [4; 4; 1; 0; 0; 6] *)
