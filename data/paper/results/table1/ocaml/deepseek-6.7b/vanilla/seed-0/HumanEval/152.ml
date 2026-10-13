let rec compare (game : int list) (guess : int list) : int list =
    match game, guess with
    | [], [] -> []
    | hd_game::tl_game, hd_guess::tl_guess -> abs(hd_game - hd_guess) :: compare tl_game tl_guess
    | _ -> failwith "The given lists are not of equal length"


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
